##################################################################
# This file is part of the code used for the computational study #
# in the paper                                                   #
#                                                                #
#  "Solving Decision-Dependent Robust Problems as Bilevel        #   
#   Optimization Problems"                                       #
#                                                                #
# by Henri Lefebvre, Martin Schmidt, Simon Stevens,              #
# and Johannes Thürauf (2025).                                   #
##################################################################

# Global imports
import gurobipy as gp
from gurobipy import GRB, QuadExpr
import numpy as np
import random

def portfolio_bilevel(nom_return, return_dev, hedge_cost, covariance, max_variance, k, Gamma=2, gam=0.2):
    """ Solves the portfolio problem with budgeted uncertainty with the Bilevel Reformulation

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
    Gamma: integer
        budget of the uncertainty set
    gam : float
        fraction of uncertainty reduction
    """

    assets = range(len(nom_return))
    
    # create a new model
    m = gp.Model("Portfolio_Bilevel")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)
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
    
    # primal upper level
    quad_expr = QuadExpr()
    for i in range(len(assets)):
        for j in range(len(assets)):
            quad_expr.add(covariance[i, j] * y[i] * y[j]) 
    m.addConstr(quad_expr <= max_variance, name="variance")
    m.addConstr(gp.quicksum(y[i] for i in assets) == 1, name="budget")

    # dual lower level
    m.addConstrs((lam[i] + pi >= return_dev[i] * y[i] for i in assets), name="dual_lower")

    # primal lower level
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

def portfolio_robust(nom_return, return_dev, hedge_cost, covariance, max_variance, k, Gamma=2, gam=0.2):
    """ Solves the portfolio problem with budgeted uncertainty with the Robust Reformulation

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
    Gamma: integer
        budget of the uncertainty set
    gam : float
        fraction of uncertainty reduction
    """

    assets = range(len(nom_return))
    
    # create a new model
    m = gp.Model("Portfolio_Robust")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)
    m.Params.NonConvex = 2

    # create variables
    x = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "x")
    y = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, name = "y")
    lam = m.addVars(assets, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(assets, vtype = GRB.BINARY, name = "s")
    
    
    # set objective
    m.setObjective(gp.quicksum(nom_return[i] * y[i] for i in assets) - gp.quicksum(hedge_cost[i] * x[i] for i in assets)
                    - pi * Gamma - gp.quicksum(lam[i] for i in assets) + gp.quicksum(lam[i] * gam * x[i] for i in assets), GRB.MAXIMIZE)

    # primal upper level
    quad_expr = QuadExpr()
    for i in range(len(assets)):
        for j in range(len(assets)):
            quad_expr.add(covariance[i, j] * y[i] * y[j])  
    m.addConstr(quad_expr <= max_variance, name="variance")
    m.addConstr(gp.quicksum(y[i] for i in assets) == 1, name="budget")

    # dual lower level
    m.addConstrs((lam[i] + pi >= return_dev[i] * y[i] for i in assets), name="dual_lower")

    # cardinality constraints
    m.addConstrs((y[i] <= s[i] for i in assets), name="cardinality")
    m.addConstr(gp.quicksum(s[i] for i in assets) <= k, name="cardinality_budget")

    # optimize model
    print("\n######################################\n")
    m.optimize()

def solve_instance_bilevel(file_name):
    """ Solves the instance with the bilevel approach"""

    seed, n, k, max_variance, nom_return, covariance, return_dev, hedge_cost = parse_file(file_name)

    portfolio_bilevel(nom_return, return_dev, hedge_cost, covariance, max_variance, k)

def solve_instance_robust(file_name):
    """ Solves the instance with the robust approach"""
    
    seed, n, k, max_variance, nom_return, covariance, return_dev, hedge_cost = parse_file(file_name)

    portfolio_robust(nom_return, return_dev, hedge_cost, covariance, max_variance, k)

def parse_file(file_path):
    """Parses the .po file and returns the portfolio parameters

    Parameters
    -------------
    file_name : str
        name of the instance file

    Returns 
    -------------
    seed : int
        random seed
    n : int
        number of assets
    k : int
        cardinality parameter
    max_variance: float
        maximum allowed variance of the portfolio
    expected_returns: list
        list of expected returns of the assets
    covariance_matrix : matrix
        covariance matrix
    return_dev : list
        list of return deviations
    hedge_cost : list
        hedge costs for reducing the uncertainties
    """

    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Extract metadata
    seed = int(lines[0].strip())
    random.seed(seed)
    np.random.seed(seed)
    
    n = int(lines[1].strip())
    k = int(lines[2].strip())
    max_variance = float(lines[3].strip())
    
    # Find the line where the covariance matrix starts
    matrix_start = next(i for i, line in enumerate(lines) if '[[' in line)

    # Extract expected returns (lines before the covariance matrix)
    expected_returns_block = ''.join(lines[4:matrix_start]).strip()
    expected_returns = [float(value) for value in expected_returns_block.strip('[]').split()]

    # Extract covariance matrix
    covariance_block = ''.join(lines[matrix_start:]).strip()
    covariance_list = [
        [float(value) for value in row.replace('[', '').replace(']', '').split()]
        for row in covariance_block.split(']') if row.strip()  # Split rows on `]` and filter empty rows
    ]
    covariance_matrix = np.asmatrix(covariance_list)

    return_dev = []
    hedge_cost = []
    for asset in range(len(expected_returns)):
        return_dev.append(random.uniform(expected_returns[asset]/2, expected_returns[asset]))
        hedge_cost.append(random.uniform(expected_returns[asset]*0.1, expected_returns[asset]*0.2))


    return seed, n, k, max_variance, expected_returns, covariance_matrix, return_dev, hedge_cost
