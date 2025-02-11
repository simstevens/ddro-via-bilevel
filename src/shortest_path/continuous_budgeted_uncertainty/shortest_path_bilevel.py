import gurobipy as gp
from gurobipy import GRB

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
