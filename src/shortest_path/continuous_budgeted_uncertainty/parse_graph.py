import networkx as nx 
import gurobipy as gp

def parse_graph(file_name, weight='weight'):
    """ Parses a .graphml file, reads it as a networkx graph and returns the data

    Parameters 
    ----------------
    file_name : str
        name of the .graphml file
    weight : str
        name of the "weight" column of the arcs

    Returns 
    ----------------
    arcs : list
        list of arcs
    source : int
        source node
    target : int
        target node
    nodes : list
        list of nodes
    """

    # read graph as networkx graph
    G = nx.read_graphml(file_name)

    # extract the data
    arcs = {}
    for (u,v) in G.edges():
        arcs[(u,v)] = G.edges[u,v][weight]

    source, target = get_source_target(file_name)

    return arcs, source, target, list(G.nodes())


def get_source_target(file_name):
    """ Checks which node is the source and target node of a graph

    Parameters
    ----------------
    file_name : str
        name of the .graphml file
    
    Returns
    ----------------
    source : int
        source node
    target : int
        target node
    """

    # read .graphml file
    G = nx.read_graphml(file_name)
    
    # search for source and target node
    for node in G.nodes():
        if G.nodes.data("source")[node] == True:
            source = node
        elif G.nodes.data("target")[node] == True:
            target = node

    return source, target