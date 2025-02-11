import random
import numpy as np

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
    hedge_cost: list
        list of hedge costs for the items
    '''
    
    # read the .kp file
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