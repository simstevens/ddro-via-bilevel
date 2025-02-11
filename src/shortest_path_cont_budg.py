import gurobipy as gp
from gurobipy import GRB
import argparse
import networkx as nx


def solve_model_bilevel(vert, arc, nom_cost, cost_dev, source, target, file_name, Gamma=2, c=1.0, gam=0.2):
    """ Solves the shortest path problem with the Bilevel Reformulation

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
    file_name:
        name of file that is being solved
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

    print("\n######################################\n")

    # create a new model
    m = gp.Model("Shortest Path Bilevel")
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

    # define McCormick bigMs
    M_lam = dict(cost_dev)
    M_u = 1

    # create variables
    y = m.addVars(arc, vtype = GRB.BINARY, name = "flow")
    x = m.addVars(arc, vtype = GRB.BINARY, name = "unc_reduction")
    u = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, ub = 1, name = "uncertainty")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    lam = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    r = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "r") # x*lambda
    w = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "w") # u*y

    # set objective
    obj = gp.quicksum(nom_cost[a] * y[a] for a in arc) + gp.quicksum(c * x[a] for a in arc) + gp.quicksum(w[a] * cost_dev[a] for a in arc)
    m.setObjective(obj, GRB.MINIMIZE)

    # add constraints
    # flow conservation
    m.addConstrs((y.sum("*", v) == y.sum(v, "*") for v in inner_nodes), name = "inner nodes")
    # source node
    m.addConstr((y.sum(source, "*") - y.sum("*", source) == 1), name = "source")
    # target node
    m.addConstr((y.sum("*", target) - y.sum(target, "*") == 1), name = "target")

    # dual lower-level constraints
    m.addConstrs(pi + lam[a] - (cost_dev[a] * y[a]) >= 0 for a in arc)

    # McCormick
    m.addConstrs(r[a] - M_lam[a] * x[a] <= 0 for a in arc)
    m.addConstrs(r[a] - lam[a] <= 0 for a in arc)
    m.addConstrs(lam[a] - M_lam[a] * (1 - x[a]) - r[a] <= 0 for a in arc)

    m.addConstrs(w[a] - M_u * y[a] <= 0 for a in arc)
    m.addConstrs(w[a] - u[a] <= 0 for a in arc)
    m.addConstrs(u[a] - M_u * (1 - y[a]) - w[a] <= 0 for a in arc)

    # primal lower-level constraints
    m.addConstr(gp.quicksum(u[a] for a in arc) <= Gamma)
    m.addConstrs(u[a] <= 1 - gam * x[a] for a in arc)

    # strong duality
    m.addConstr(gp.quicksum(w[a] * cost_dev[a] for a in arc) >=
                pi * Gamma + gp.quicksum(lam[a] for a in arc) - gp.quicksum(r[a] * gam for a in arc))

    # optimize model
    m.optimize()

    result = []
    for y_a in y: 
        if y[y_a].x != 0:
            result.append(y[y_a].varName)

    print("result ,",file_name.split("/")[-1],", bilevel ,",m.Runtime,",",m.Status,",",m.ObjVal,
            ",",m.NodeCount,",",m.IterCount,",",m.MIPGap,",",len(vert),",",len(arc), ",", len(result))
    print("path ,",file_name.split("/")[-1],", bilevel ,",result)

def solve_model_robust(vert, arc, nom_cost, cost_dev, source, target, file_name, Gamma=2, c=1.0, gam=0.2):
    """ Solves the shortest path problem with the robust counterpart reformulation

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
    file_name:
        name of file that is being solved
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

    print("\n######################################\n")

    # create a new model
    m = gp.Model("Shortest Path Robust")
    m.Params.Threads = 1
    m.setParam('TimeLimit', 2*60*60)

    # define McCormick bigMs
    M_lam = dict(cost_dev)

    # create variables
    y = m.addVars(arc, vtype = GRB.BINARY, name = "flow")
    x = m.addVars(arc, vtype = GRB.BINARY, name = "unc_reduction")
    pi = m.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = "pi")
    lam = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "lambda")
    r = m.addVars(arc, vtype = GRB.CONTINUOUS, lb = 0, name = "r")

    # set objective
    obj = gp.quicksum(nom_cost[a] * y[a] for a in arc) + gp.quicksum(c * x[a] for a in arc) + pi * Gamma + gp.quicksum(lam[a] - gam * r[a] for a in arc)
    m.setObjective(obj, GRB.MINIMIZE)

    # add constraints
    # flow conservation
    m.addConstrs((y.sum("*", v) == y.sum(v, "*") for v in inner_nodes), name = "inner nodes")
    # source node
    m.addConstr((y.sum(source, "*") - y.sum("*", source) == 1), name = "source")
    # target node
    m.addConstr((y.sum("*", target) - y.sum(target, "*") == 1), name = "target")

    # robust constraints
    m.addConstrs(pi + lam[a] - (cost_dev[a] * y[a]) >= 0 for a in arc)

    # McCormick
    m.addConstrs(r[a] - M_lam[a] * x[a] <= 0 for a in arc)
    m.addConstrs(r[a] - lam[a] <= 0 for a in arc)
    m.addConstrs(lam[a] - M_lam[a] * (1 - x[a]) - r[a] <= 0 for a in arc)

    # optimize model
    m.optimize()

    result = []
    for y_a in y: 
        if y[y_a].x != 0:
            result.append(y[y_a].varName)

    print("result ,", file_name.split("/")[-1], ", robust ,", m.Runtime, ",", m.Status, ",", m.ObjVal,
             ",", m.NodeCount, ",", m.IterCount, ",", m.MIPGap, ",", len(vert), ",", len(arc), ",", len(result))
    print("path ,",file_name.split("/")[-1],", robust ,",result)

def solve_instance_bilevel(file_name):
    ''' Solves the shortest path instance with the bilevel model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    if "road" in file_name:
        arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name, weight="travel_time")
    else:
        arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name)

    # solve instance
    solve_model_bilevel(nodes, arcs, nom_cost, cost_dev, source, target, file_name)

def solve_instance_robust(file_name):
    ''' Solves the shortest path instance with the robust model

    Parameters
    --------------
    file_name: string
        path to instance
    '''
    # parse instance
    if "road" in file_name:
        arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name, weight="travel_time")
    else:
        arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name)

    # solve instance
    solve_model_robust(nodes, arcs, nom_cost, cost_dev, source, target, file_name)

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
    ''' Finds the source and target nodes in a graphml file
    
    Parameters 
    -------------
    file_name: string
        path to instance
    
    Returns
    -------------
    source: int
        source node
    target: int
        target node
    '''

    # read the graphml file as a networkx model
    G = nx.read_graphml(file_name)
    
    # check every node for its source and target value
    for node in G.nodes():
        if G.nodes.data("source")[node] == True:
            source = node
        elif G.nodes.data("target")[node] == True:
            target = node

    return source, target


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--instance_file', required = True,
                        help = 'The file containing the instance data.')
    parser.add_argument('--approach', required = True,
                        help = 'The approach to be used - "robust" or "bilevel".')
    arguments = parser.parse_args()
    approach = arguments.approach
    instance_file = "./instances/shortest_path/continuous_budgeted_uncertainty/" + arguments.instance_file + ".graphml"

    print(f"Solving instance {instance_file}")

    if approach not in ["robust", "bilevel"]:
        raise TypeError("Approach has to be either 'robust' or 'bilevel'!")
    if approach == "robust": 
        solve_instance_robust(instance_file)
    if approach == "bilevel":
        solve_instance_bilevel(instance_file)