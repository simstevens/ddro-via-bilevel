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
from gurobipy import GRB
import random
import numpy as np

def solve_model_bilevel(nom_weights, weight_dev, values, capacity, hedge_cost,file_name, gam=0.2):
    """ Solves the knapsack problem with budgeted uncertainties with tnthe Bilevel Reformulation

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
        hedge costs for reducing the uncertainties
    gam : float
        fraction of uncertainty reduction
    """

    items = range(len(nom_weights))
    Gamma = 0.1 * len(nom_weights)

    # create a new model
    m = gp.Model("Knapsack Bilevel")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)
    m.setParam("MIPGap", 1e-6)

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "x")
    y = m.addVars(items, vtype = GRB.BINARY, name = "y")
    u = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "u")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # lam*y
    r = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "r") # u*x

    # define McCormick bigMs
    M_lam = weight_dev.copy()
    M_u = 1

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items) - gp.quicksum(hedge_cost[i] * y[i] for i in items), GRB.MAXIMIZE)

    # strong duality
    m.addConstr((pi * Gamma + gp.quicksum(lam[i] for i in items) - gp.quicksum(gam * s[i] for i in items) <= gp.quicksum(weight_dev[i] * r[i] for i in items)), name="strong_duality")

    # dual lower level
    m.addConstrs(((pi + lam[i] >= weight_dev[i] * x[i]) for i in items), name="dual_lower_level")

    # primal upper level
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] + weight_dev[i] * r[i] for i in items) <= capacity)

    # primal lower level
    m.addConstrs((u[i] <= 1 - gam * y[i] for i in items), name="primal_lower_level")
    m.addConstr(gp.quicksum(u[i] for i in items) <= Gamma, name="primal_lower_level_sum")

    # McCormick
    m.addConstrs((s[i] - M_lam[i] * y[i] <= 0 for i in items), name="mccormick_s_y")
    m.addConstrs((s[i] - lam[i] <= 0 for i in items), name="mccormick_s_lam")
    m.addConstrs((lam[i] - M_lam[i] * (1 - y[i]) - s[i] <= 0 for i in items), name="mccormick_lam_s_x")

    m.addConstrs((r[i] <= u[i] for i in items), name="mccormick_r_u")
    m.addConstrs((r[i] <= M_u * x[i] for i in items), name="mccormick_r_x")
    m.addConstrs((r[i] >= u[i] - M_u * (1 - x[i]) for i in items), name="mccormick_r_u_x")

    # optimize model
    print("\n######################################\n")
    m.optimize()
    
    result = m.getVars()
    for var in result:
        if "x" in var.VarName or "y" in var.VarName:
            if var.X > 0.0001:
                print(var.VarName, var.X)
    print("result ,", file_name.split("/")[-1], ", bilevel ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_weights))

def solve_model_robust(nom_weights, weight_dev, values, capacity, hedge_cost,file_name, gam=0.2):
    """ Solves the knapsack problem with budgeted uncertainties with the Robust Reformulation

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
        hedge costs for reducing the uncertainties
    gam : float
        fraction of uncertainty reduction
    """

    items = range(len(nom_weights))
    Gamma = 0.1 * len(nom_weights)

    # create a new model
    m = gp.Model("Knapsack Robust")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)
    m.setParam("MIPGap", 1e-6)

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "x")
    y = m.addVars(items, vtype = GRB.BINARY, name = "y")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # lam*y

    # define McCormick bigMs
    M_lam = weight_dev.copy()

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items) - gp.quicksum(hedge_cost[i] * y[i] for i in items), GRB.MAXIMIZE)

    # primal upper level
    m.addConstr((gp.quicksum(nom_weights[i] * x[i] for i in items)
                + pi * Gamma
                + gp.quicksum(lam[i] for i in items)
                - gp.quicksum(gam * s[i] for i in items) <= capacity), name="primal_upper_level")

    # dual lower level
    m.addConstrs((pi + lam[i] >= weight_dev[i] * x[i] for i in items), name="dual_lower_level")

    # McCormick
    m.addConstrs((s[i] - M_lam[i] * y[i] <= 0 for i in items), name="mccormick_s_y")
    m.addConstrs((s[i] - lam[i] <= 0 for i in items), name="mccormick_s_lam")
    m.addConstrs((lam[i] - M_lam[i] * (1 - y[i]) - s[i] <= 0 for i in items), name="mccormick_lam_s_x")

    # optimize model
    print("\n######################################\n")
    m.optimize()
    
    result = m.getVars()
    for var in result:
        if "x" in var.VarName or "y" in var.VarName:
            if var.X > 0.0001:
                print(var.VarName, var.X)
    print("result ,", file_name.split("/")[-1], ", robust ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_weights))

def parse_knapsack(file_path):
    ''' Parses a .kp file and returns the knapsack parameters

    Parameters
    -------------
    file_name: string
        path to instance

    Returns
    --------------
    number_of_items: int
        number of items in the knapsack instance
    capacity: int
        capacity of the knapsack
    nom_weights: list
        list of nominal weights of the items
    weight_dev: list
        list of deviations of the weights of the items
    values: list
        list of the values of the items
    hedge_cost : list
        hedge costs for reducing the uncertainties

    '''
    
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # First two lines
    seed = int(lines[0].strip())
    random.seed(seed)
    np.random.seed(seed)
    number_of_items = int(lines[1].strip())
    capacity = int(lines[2].strip())

    # Second block - extracting nom_weights, weight_dev, and values
    nom_weights = []
    weight_dev = []
    hedge_cost = []
    values = []
    idx = 4
    while lines[idx].strip() and not lines[idx].startswith(' '):
        nom, dev, val = map(float, lines[idx].strip().split())
        nom_weights.append(nom)
        weight_dev.append(dev)
        values.append(val)
        hedge_cost.append(0.001)
        idx += 1
    return number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost

def solve_instance_bilevel(file_name):
    ''' Solves the knapsack instance with the bilevel model'''
    
    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost = parse_knapsack(file_name)

    # solve instance
    solve_model_bilevel(nom_weights, weight_dev, values, capacity, hedge_cost, file_name)

def solve_instance_robust(file_name):  
    ''' Solves the knapsack instance with the robust model'''

    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost = parse_knapsack(file_name) 

    # solve instance
    solve_model_robust(nom_weights, weight_dev, values, capacity, hedge_cost, file_name)