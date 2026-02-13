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
import networkx as nx


def solve_model_bilevel(vert, arc, nom_cost, cost_dev, source, target, b, w, f, file_name,  Gamma=2, c=1.0, gam=0.2):
    """ Solves the shortest path problem with budgeted uncertainty with the Bilevel Reformulation

    Parameters
    -------------
    vert: list
        list of vertices of the graph
    arc: dic
        dic of all arcs of the graph
    nom_cost: dic
        dic of all nominal costs on the arcs of the graph
    cost_dev: dic
        dic of all maximum cost deviations on the arcs of the graph
    source: int
        source node
    target: int
        target node
    Gamma: int
        uncertainty budget
    c: float
        cost for reducing uncertainty
    gam: float
        fraction of uncertainty that is reduced
    """

    # create inner_nodes list
    inner_nodes = vert.copy()
    inner_nodes.remove(source)
    inner_nodes.remove(target)

    # create a new model
    m = gp.Model("Shortest Path Bilevel")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

    # define McCormick bigMs
    M_lam = dict(cost_dev)
    M_u = 1

    # create variables
    y = m.addVars(arc, vtype = GRB.BINARY, name = "y")
    u = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "u")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    lam = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    r = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "r") # y*lambda
    z = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "z") # u*y

    # set objective
    obj = gp.quicksum(nom_cost[a] * y[a] for a in arc) + gp.quicksum(z[a] * cost_dev[a] for a in arc)
    m.setObjective(obj, GRB.MINIMIZE)

    # primal upper level
    m.addConstrs((y.sum("*", v) == y.sum(v, "*") for v in inner_nodes), name = "inner nodes")
    m.addConstr((y.sum(source, "*") - y.sum("*", source) == 1), name = "source")
    m.addConstr((y.sum("*", target) - y.sum(target, "*") == 1), name = "target")

    # primal lower-level constraints
    m.addConstr(gp.quicksum(f[a] * u[a] for a in arc) <= b + gp.quicksum(w[a] * y[a] for a in arc))

    # dual lower level
    m.addConstrs(pi * f[a] + lam[a] >= cost_dev[a] * y[a] for a in arc)

    # strong duality
    m.addConstr(gp.quicksum(lam[a] for a in arc) + (pi * (b + (gp.quicksum(w[a] * y[a] for a in arc)))) <= gp.quicksum(z[a] * cost_dev[a] for a in arc))

    # McCormick
    m.addConstrs(r[a] - M_lam[a] * y[a] <= 0 for a in arc)
    m.addConstrs(r[a] - lam[a] <= 0 for a in arc)
    m.addConstrs(lam[a] - M_lam[a] * (1 - y[a]) - r[a] <= 0 for a in arc)

    m.addConstrs(z[a] - M_u * y[a] <= 0 for a in arc)
    m.addConstrs(z[a] - u[a] <= 0 for a in arc)
    m.addConstrs(u[a] - M_u * (1 - y[a]) - z[a] <= 0 for a in arc)

    # optimize model
    print("\n######################################\n")
    m.optimize()
    result = m.getVars()
    for var in result:
        if  "y" in var.VarName:
            if var.X > 0.001:
                print(var.VarName, var.X)
    print("result ,", file_name.split("/")[-1], ", bilevel ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(vert))

def solve_model_robust(vert, arc, nom_cost, cost_dev, source, target, b, w, f, file_name, Gamma=2, c=1.0, gam=0.2):
    """ Solves the shortest path problem with budgeted uncertainty with the Robust Reformulation

    Parameters
    -------------
    vert: list
        list of vertices of the graph
    arc: dic
        dic of all arcs of the graph
    nom_cost: dic
        dic of all nominal costs on the arcs of the graph
    cost_dev: dic
        dic of all maximum cost deviations on the arcs of the graph
    source: int
        source node
    target: int
        target node
    Gamma: int
        uncertainty budget
    c: float
        cost for reducing uncertainty
    gam: float
        fraction of uncertainty that is reduced
    """

    # create inner_nodes list
    inner_nodes = vert.copy()
    inner_nodes.remove(source)
    inner_nodes.remove(target)

    # create a new model
    m = gp.Model("Shortest Path Robust")

    # set parameters
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

    # define McCormick bigMs
    M_lam = dict(cost_dev)

    # create variables
    y = m.addVars(arc, vtype = GRB.BINARY, name = "y")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    lam = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    r = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "r") # y*lambda

    # set objective
    obj = gp.quicksum(nom_cost[a] * y[a] for a in arc) + gp.quicksum(lam[a] for a in arc) + (pi * (b + (gp.quicksum(w[a] * y[a] for a in arc))))
    m.setObjective(obj, GRB.MINIMIZE)

    # primal upper level
    m.addConstrs((y.sum("*", v) == y.sum(v, "*") for v in inner_nodes), name = "inner nodes")
    m.addConstr((y.sum(source, "*") - y.sum("*", source) == 1), name = "source")
    m.addConstr((y.sum("*", target) - y.sum(target, "*") == 1), name = "target")

    # dual lower level
    m.addConstrs(pi * f[a] + lam[a] >= cost_dev[a] * y[a] for a in arc)

    # McCormick
    m.addConstrs(r[a] - M_lam[a] * y[a] <= 0 for a in arc)
    m.addConstrs(r[a] - lam[a] <= 0 for a in arc)
    m.addConstrs(lam[a] - M_lam[a] * (1 - y[a]) - r[a] <= 0 for a in arc)

    # optimize model
    print("\n######################################\n")
    m.optimize()
    result = m.getVars()
    for var in result:
        if "y" in var.VarName:
            if var.X > 0.001:
                print(var.VarName, var.X)
    print("result ,", file_name.split("/")[-1], ", robust ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(vert))

def solve_instance_bilevel(file_name):
    ''' Solves the shortest path instance with the bilevel model'''
    # parse instanc
    arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name)
    b, w, f = parse_ll_knapsack(file_name.replace(".graphml", ".kp"), arcs)
    
    # solve instance
    solve_model_bilevel(nodes, arcs, nom_cost, cost_dev, source, target, b, w, f, file_name)

def solve_instance_robust(file_name):
    ''' Solves the shortest path instance with the robust model'''
    # parse instance
    arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name)
    b, w, f = parse_ll_knapsack(file_name.replace(".graphml", ".kp"), arcs)
    
    # solve instance
    solve_model_robust(nodes, arcs, nom_cost, cost_dev, source, target, b, w, f, file_name)

def parse_graph(file_name, weight='weight'):
    ''' Parses a graphml file and returns the graph parameters

    Parameters
    -------------
    file_name: string
        path to instance
    weight: string
        name of the arc weight column

    Returns
    --------------
    arcs: dic
        dic of all arcs of the graph
    nom_cost: dic
        dic of all nominal costs on the arcs of the graph
    cost_dev : dic
        dic of all cost deviations
    source: int
        source node
    target: int
        target node
    list(G.nodes()): list
        list of all nodes in the graph
    '''

    # read the graphml file as a networkx model
    G = nx.read_graphml(file_name)

    # extract all arcs
    arcs_dic = {}
    for (u,v) in G.edges():
        arcs_dic[(u,v)] = G.edges[u,v][weight]

    # extract source and target node
    source, target = get_source_target(file_name)

    # extract all nom_costs
    arcs, nom_cost = gp.multidict(arcs_dic)
    cost_dev = nom_cost

    return arcs, nom_cost, cost_dev, source, target, list(G.nodes())

def get_source_target(file_name):
    ''' Finds the source and target nodes in a graphml file'''
    
    # read the graphml file as a networkx model
    G = nx.read_graphml(file_name)
    
    # check every node for its source and target value
    for node in G.nodes():
        if G.nodes.data("source")[node] == True:
            source = node
        elif G.nodes.data("target")[node] == True:
            target = node

    return source, target

def parse_ll_knapsack(file_name, arcs):
        with open(file_name, 'r') as file:
            lines = file.readlines()
        
        # First two lines
        seed = int(lines[0].strip())
        b = int(lines[1].strip())
        
        idx = 2
        # Parse w and f
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
        w_list = [float(value) for value in w_data.split()]
        f_list = [float(value) for value in f_data.split()]
        

        # Convert the lists into dictionaries corresponding to the arcs 
        w, f = dictionarize(arcs, w_list, f_list)
    
        return b, w, f
    
def dictionarize(arcs, w_list, f_list):
        ''' Converts the w_list and f_list into dicts with the corresponding arcs as keys

        Parameters
        -------------
        arcs: dict
            dict of all arcs of the graph
        w_list : list
            list of all w values
        f_list : list
            list of all f values
        
        Returns
        -------------
        w : dict
            dict of all w values
        f : dict
            dict of all f values
        '''

        # initialize dicts
        w = {}
        f = {}
        i = 0

        # copy the list values into the dicts
        for a in arcs:
            w[a] = w_list[i]
            f[a] = f_list[i]
            i += 1
            
        return w, f    