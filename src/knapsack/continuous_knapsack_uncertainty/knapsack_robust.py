import gurobipy as gp
from gurobipy import GRB
import numpy as np

def solve_model_robust(nom_weights, weight_dev, values, capacity, b, w, f, file_name):
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

    # create a new model
    m = gp.Model("Knapsack Robust")

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "decision")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # pi*x

    # define McCormick bigMs
    assert(min(f) > 0)
    M_pi = max(weight_dev)/min(f)

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items), GRB.MAXIMIZE)

    # add capacity constraint
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] for i in items)
                + gp.quicksum(lam[i] for i in items)
                + (pi * b - (gp.quicksum(w[i] * s[i] for i in items))) <= capacity)

    # dual constraint
    m.addConstrs(pi * f[i] + lam[i] >= weight_dev[i] * x[i] for i in items)

    # McCormick
    m.addConstrs(s[i] - M_pi * x[i] <= 0 for i in items)
    m.addConstrs(s[i] - pi <= 0 for i in items)
    m.addConstrs(pi - M_pi * (1 - x[i]) - s[i] <= 0 for i in items)

    # optimize model
    print("\n######################################\n")
    m.optimize()

    result=[]
    for x_a in x: 
        if x[x_a].x != 0:
            result.append(x[x_a].varName)

    print("result ,", file_name.split("/")[-1], ", robust ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(nom_weights), ",", len(result))
