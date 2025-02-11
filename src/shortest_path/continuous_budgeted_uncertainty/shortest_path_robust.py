import gurobipy as gp
from gurobipy import GRB

def solve_model_robust(vert, arc, nom_cost, cost_dev, source, target, file_name, Gamma=2, c=1.0, gam=0.2):
    """ Solves the shortest path problem with the Robust reformulation

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
