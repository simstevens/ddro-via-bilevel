import sys

from parse_graph import *
from shortest_path_robust import *

def solve_instance_robust(file_name):
    ''' Solves the shortest path instance with the robust model

    Parameters
    --------------
    file_name: string
        path to instance
    '''

    # parse instance
    arcs, nom_cost, cost_dev, source, target, nodes = parse_graph(file_name)

    # solve instance
    solve_model_robust(nodes, arcs, nom_cost, cost_dev, source, target, file_name)

def main():
    if len(sys.argv) != 2:
        raise RuntimeError("Expected 1 argument.")

    # read path to instance
    path_to_instance = sys.argv[1]
    print(f"Solving instance {path_to_instance}")

    # solve instance
    solve_instance_robust(path_to_instance)


if __name__ == "__main__":
    main()
    