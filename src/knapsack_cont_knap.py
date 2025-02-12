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

def solve_model_bilevel(nom_weights, weight_dev, values, capacity, b, w, f):
    """ Solves the knapsack problem with continuous knapsack uncertainties with the Bilevel Reformulation

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
    """

    items = range(len(nom_weights))

    # create a new model
    m = gp.Model("Knapsack Bilevel")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

    # create variables
    x = m.addVars(items, vtype = GRB.BINARY, name = "decision")
    u = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "u")
    lam = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    s = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "s") # x*pi
    r = m.addVars(items, vtype = GRB.CONTINUOUS, lb = 0, name = "r") # u*x

    # define McCormick bigMs
    assert(min(f) > 0)
    M_pi = max(weight_dev)/min(f)
    M_u = 1

    # set objective
    m.setObjective(gp.quicksum(x[i] * values[i] for i in items), GRB.MAXIMIZE)

    # strong duality
    m.addConstr(gp.quicksum(lam[i] for i in items) + (pi * b - (gp.quicksum(w[i] * s[i] for i in items))) <= gp.quicksum(r[i] * weight_dev[i] for i in items))

    # dual lower level
    m.addConstrs(pi * f[i] + lam[i] >= weight_dev[i] * x[i] for i in items)

    # primal upper level
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] + weight_dev[i] * r[i] for i in items) <= capacity)

    # primal lower level
    m.addConstr(gp.quicksum(f[i] * u[i] for i in items) <= b - gp.quicksum(w[i] * x[i] for i in items))

    # McCormick
    m.addConstrs(s[i] - M_pi * x[i] <= 0 for i in items)
    m.addConstrs(s[i] - pi <= 0 for i in items)
    m.addConstrs(pi - M_pi * (1 - x[i]) - s[i] <= 0 for i in items)

    m.addConstrs(r[i] <= u[i] for i in items)
    m.addConstrs(r[i] <= M_u * x[i] for i in items)
    m.addConstrs(r[i] >= u[i] - M_u * (1 - x[i]) for i in items)

    # optimize model
    print("\n######################################\n")
    m.optimize()

def solve_model_robust(nom_weights, weight_dev, values, capacity, b, w, f):
    """ Solves the knapsack problem with continuous knapsack uncertainties with the Robust Reformulation

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
    """

    items = range(len(nom_weights))

    # create a new model
    m = gp.Model("Knapsack Robust")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

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

    # primal upper level
    m.addConstr(gp.quicksum(nom_weights[i] * x[i] for i in items)
                + gp.quicksum(lam[i] for i in items)
                + (pi * b - (gp.quicksum(w[i] * s[i] for i in items))) <= capacity)

    # dual lower level
    m.addConstrs(pi * f[i] + lam[i] >= weight_dev[i] * x[i] for i in items)

    # McCormick
    m.addConstrs(s[i] - M_pi * x[i] <= 0 for i in items)
    m.addConstrs(s[i] - pi <= 0 for i in items)
    m.addConstrs(pi - M_pi * (1 - x[i]) - s[i] <= 0 for i in items)

    # optimize model
    print("\n######################################\n")
    m.optimize()

def solve_instance_bilevel(file_name):
    ''' Solves the knapsack instance with the bilevel model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, b, w, f = parse_knapsack(file_name)

    # solve instance
    solve_model_bilevel(nom_weights, weight_dev, values, capacity, b, w, f)

def solve_instance_robust(file_name):  
    ''' Solves the knapsack instance with the robust model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    number_of_items, capacity, nom_weights, weight_dev, values, b, w, f = parse_knapsack(file_name) 

    # solve instance
    solve_model_robust(nom_weights, weight_dev, values, capacity, b, w, f)

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
    number_of_items = int(lines[1].strip())
    capacity = int(lines[2].strip())

    # Second block - extracting nom_weights, weight_dev, and values
    nom_weights = []
    weight_dev = []
    values = []
    idx = 4
    while lines[idx].strip() and not lines[idx].startswith(' '):
        nom, dev, val = map(float, lines[idx].strip().split())
        nom_weights.append(nom)
        weight_dev.append(dev)
        values.append(val)
        idx += 1

    # Third block - extracting b, w, f
    idx += 2
    b = float(lines[idx].strip())
    idx += 2
    # Parse `w` from the second line onward until the next list
    w_data = ""
    f_data = ""
    
    # Identifying sections by line content
    w_section = False
    f_section = False
    
    for line in lines[idx:]:
        line = line.strip()
        if line.startswith("[") and w_section is False:
            w_section = True
            w_data += line.strip("[] ") + " "
        elif line.startswith("[") and w_section:
            f_section = True
            w_section = False
            f_data += line.strip("[] ") + " "
        elif w_section:
            w_data += line.strip("[] ") + " "
        elif f_section:
            f_data += line.strip("[] ") + " "

    # Convert collected strings into lists of floats
    w = [float(value) for value in w_data.split()]
    f = [float(value) for value in f_data.split()]
   
    
    return number_of_items, capacity, nom_weights, weight_dev, values, b, w, f
