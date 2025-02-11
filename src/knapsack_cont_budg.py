import gurobipy as gp
from gurobipy import GRB
import random
import numpy as np
import argparse

def solve_model_bilevel(nom_weights, weight_dev, values, capacity, hedge_cost, file_name, Gamma=50, gam=0.2):
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
    b: float
        constant parameter of uncertainty budget
    w: list
        list of weights in uncertainty budget
    f: list
        list of weights in knapsack uncertainty
    file_name: string
        name of the file that is being solved
    """

    items = range(len(nom_weights))
    Gamma = 0.30 * len(nom_weights)

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
    #print("items ,",file_name.split("/")[-1],", bilevel ,",result)

def solve_model_robust(nom_weights, weight_dev, values, capacity, hedge_cost, file_name, Gamma=50, gam=0.2):
    """ Solves the knapsack problem with uncertain weights with the Robust Reformulation

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
    b: float
        constant parameter of uncertainty budget
    w: list
        list of weights in uncertainty budget
    f: list
        list of weights in knapsack uncertainty
    file_name: string
        name of the file that is being solved
    """

    items = range(len(nom_weights))
    Gamma = 0.30 * len(nom_weights)

    # create a new model
    m = gp.Model("Knapsack Robust")

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "decision")
    y = m.addVars(items, vtype = GRB.BINARY, name = "hedge_decision")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # lam*y

    # define McCormick bigMs
    M_lam = weight_dev.copy()

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items) - gp.quicksum(hedge_cost[i] * y[i] for i in items), GRB.MAXIMIZE)

    # add capacity constraint
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] for i in items)
                + pi * Gamma
                + gp.quicksum(lam[i] for i in items)
                - gp.quicksum(gam * s[i] for i in items) <= capacity)

    # dual constraint
    m.addConstrs(pi + lam[i] >= weight_dev[i] * x[i] for i in items)

    # McCormick
    m.addConstrs(s[i] - M_lam[i] * y[i] <= 0 for i in items)
    m.addConstrs(s[i] - lam[i] <= 0 for i in items)
    m.addConstrs(lam[i] - M_lam[i] * (1 - x[i]) - s[i] <= 0 for i in items)

    # optimize model
    print("\n######################################\n")
    m.optimize()

    result=[]
    for x_a in x: 
        if x[x_a].x != 0:
            result.append(x[x_a].varName)

    print("result ,", file_name.split("/")[-1], ", robust ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_weights), ",", len(result))
    #print("items ,",file_name.split("/")[-1],", robust ,",result)

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
    b: float
        constant parameter of uncertainty budget
    w: list
        list of weights in uncertainty budget
    f: list
        list of weights in knapsack uncertainty
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
        hedge_cost.append(random.uniform(val/10, val/5))
        idx += 1
    return number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost

def solve_instance_bilevel(file_name):
    ''' Solves the knapsack instance with the bilevel model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost = parse_knapsack(file_name)

    # solve instance
    solve_model_bilevel(nom_weights, weight_dev, values, capacity, hedge_cost, file_name)

def solve_instance_robust(file_name):  
    ''' Solves the knapsack instance with the robust model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, hedge_cost = parse_knapsack(file_name) 

    # solve instance
    solve_model_robust(nom_weights, weight_dev, values, capacity, hedge_cost, file_name)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--instance_file', required = True,
                        help = 'The file containing the instance data.')
    parser.add_argument('--approach', required = True,
                        help = 'The approach to be used - "robust" or "bilevel".')
    arguments = parser.parse_args()
    approach = arguments.approach
    instance_file = "./instances/knapsack/continuous_budgeted_uncertainty/" + arguments.instance_file + ".kp"

    print(f"Solving instance {instance_file}")
    if approach not in ["robust", "bilevel"]:
        raise TypeError("Approach has to be either 'robust' or 'bilevel'!")
    if approach == "robust": 
        solve_instance_robust(instance_file)
    if approach == "bilevel":
        solve_instance_bilevel(instance_file)