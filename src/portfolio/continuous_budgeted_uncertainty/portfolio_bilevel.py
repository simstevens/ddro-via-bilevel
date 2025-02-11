import gurobipy as gp
from gurobipy import GRB, QuadExpr
import numpy as np 

def portfolio_bilevel(nom_return, return_dev, hedge_cost, covariance, max_variance, k, file_name, Gamma=2, gam=0.2):
    """ Solves the portfolio problem with the Bilevel Reformulation

    Parameters
    -------------
    nom_return: list
        list of nominal returns of the assets
    return_dev: list
        list of deviations of the returns of the assets
    hedge_cost: list
        list of the hedge costs of the assets
    covariance: list of list
        covariance matrix
    max_variance: float
        maximum allowed variance of the portfolio
    k : int
        cardinality constraint parameter
    file_name : str
        name of the .po file
    Gamma: integer
        budget of the uncertainty set
    gam : float
        fraction of uncertainty reduction
    """

    assets = range(len(nom_return))
    
    # create a new model
    m = gp.Model("Portfolio_Bilevel")

    # set parameters
    m.Params.NonConvex = 2

    # create variables
    x = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "x")
    y = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, name = "y")
    lam = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    u = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, name = "u")
    s = m.addVars(assets, vtype = GRB.BINARY, name = "s")
    
    
    # set objective
    m.setObjective(gp.quicksum(nom_return[i] * y[i] for i in assets) - gp.quicksum(hedge_cost[i] * x[i] for i in assets)
                    - gp.quicksum(u[i] * return_dev[i] * y[i] for i in assets), GRB.MAXIMIZE)
    print(return_dev)
    quad_expr = QuadExpr()
    for i in range(len(assets)):
        for j in range(len(assets)):
            quad_expr.add(covariance[i, j] * y[i] * y[j]) 
    # add constraints
    m.addConstr(quad_expr <= max_variance, name="variance")
    m.addConstr(gp.quicksum(y[i] for i in assets) == 1, name="budget")
    m.addConstrs((lam[i] + pi >= return_dev[i] * y[i] for i in assets), name="dual_lower")
    print(return_dev)
    # add uncertainty constraints
    m.addConstr(gp.quicksum(u[i] for i in assets) <= Gamma, name="uncertainty_budget")
    m.addConstrs((u[i] <= 1 - gam * x[i] for i in assets), name="uncertainty_bound")

    # strong duality
    m.addConstr(gp.quicksum(u[i] * return_dev[i] * y[i] for i in assets) >= pi * Gamma + gp.quicksum(lam[i] for i in assets) - gp.quicksum(lam[i] * gam * x[i] for i in assets), name="duality")

    # cardinality constraints
    m.addConstrs((y[i] <= s[i] for i in assets), name="cardinality")
    m.addConstr(gp.quicksum(s[i] for i in assets) <= k, name="cardinality_budget")

    # optimize model
    print("\n######################################\n")
    m.optimize()

    result=[]
    for y_a in y: 
       if y[y_a].x > 0.0001:
           result.append((y[y_a].varName, y[y_a].X))

    print("result ,", file_name.split("/")[-1], ", bilevel ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_return), ",", len(result))
    print("assets ,",file_name.split("/")[-1],", bilevel ,",result)