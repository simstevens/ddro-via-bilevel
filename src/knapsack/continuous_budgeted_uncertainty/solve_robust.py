import sys

from parse_knapsack import *
from knapsack_robust import *

def solve_instance(file_name):  
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

def main():
    if len(sys.argv) != 2:
        raise RuntimeError("Expected 1 argument.")

    # read path to instance
    path_to_instance = sys.argv[1]
    print(f"Solving instance {path_to_instance}")

    # solve instance
    solve_instance(path_to_instance)


if __name__ == "__main__":
    main()