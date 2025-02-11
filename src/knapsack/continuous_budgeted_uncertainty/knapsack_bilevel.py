import gurobipy as gp
from gurobipy import GRB
import numpy as np

def solve_model_bilevel(nom_weights, weight_dev, values, capacity, hedge_cost, file_name, gam=0.2):
    """ Solves the knapsack problem with uncertain weights with the Bilevel Reformulation

    Parameters
    -------------
    nom_weights: list
        list of nominal weights of the items
    weight_dev: list
        list of deviations of the weights of the items
    values: list
        list of the values of the items
    capacity: int
        capacity of the bag
    hedge_cost : list
        list of hedge costs of the items
    file_name : str
        name of the file
    gam : float
        fraction of uncertainty reduced
    """

    items = range(len(nom_weights))
    Gamma = 0.01 * len(nom_weights)

    # create a new model
    m = gp.Model("Knapsack Bilevel")

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "decision")
    y = m.addVars(items, vtype = GRB.BINARY, name = "hedge_decision")
    u = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "u")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # lam*y
    r = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "r") # u*x

    # define McCormick bigMs
    M_lam = weight_dev.copy()
    M_u = 1

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items) - gp.quicksum(hedge_cost[i] * y[i] for i in items), GRB.MAXIMIZE)

    # add constraints
    # strong duality
    m.addConstr(pi * Gamma + gp.quicksum(lam[i] for i in items) - gp.quicksum(gam * s[i] for i in items) <= gp.quicksum(weight_dev[i] * r[i] for i in items))

    # dual constraint
    m.addConstrs(pi + lam[i] >= weight_dev[i] * x[i] for i in items)

    # primal upper level
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] for i in items)
                + pi * Gamma
                + gp.quicksum(lam[i] for i in items)
                - gp.quicksum(gam * s[i] for i in items) <= capacity)

    # primal lower level
    m.addConstrs(u[i] <= 1 - gam * y[i] for i in items)
    m.addConstr(gp.quicksum(u[i] for i in items) <= Gamma)

    # McCormick
    m.addConstrs(s[i] - M_lam[i] * y[i] <= 0 for i in items)
    m.addConstrs(s[i] - lam[i] <= 0 for i in items)
    m.addConstrs(lam[i] - M_lam[i] * (1 - x[i]) - s[i] <= 0 for i in items)

    m.addConstrs(r[i] <= u[i] for i in items)
    m.addConstrs(r[i] <= M_u * x[i] for i in items)
    m.addConstrs(r[i] >= u[i] - M_u * (1 - x[i]) for i in items)

    # optimize model
    print("\n######################################\n")
    m.optimize()

    result=[]
    for x_a in x: 
        if x[x_a].x != 0:
            result.append(x[x_a].varName)

    print("result ,", file_name.split("/")[-1], ", bilevel ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_weights), ",", len(result))
