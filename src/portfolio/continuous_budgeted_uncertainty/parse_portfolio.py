import numpy as np
import random

def parse_file(file_path):
    """ Parses the input .po file

    Parameters 
    ----------------
    file_path : str
        path to the .po file

    Returns 
    ----------------
    seed : int
        seed for the randomizer
    n : int
        number of assets
    k : int
        cardinality constraint parameter
    max_variance: float
        maximum variance of the portfolio
    expected_returns: list
        list of expected returns of the assets
    covariance_matrix : list of list
        covariance matrix of the assets
    return_dev : list
        list of return deviations of the assets
    hedge_cost : list
        list of hedge costs of the assets
    """

    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Extract metadata
    seed = int(lines[0].strip())
    random.seed(seed)
    np.random.seed(seed)
    
    n = int(lines[1].strip())
    k = int(lines[2].strip())
    max_variance = float(lines[3].strip())
    
    # Find the line where the covariance matrix starts
    matrix_start = next(i for i, line in enumerate(lines) if '[[' in line)

    # Extract expected returns (lines before the covariance matrix)
    expected_returns_block = ''.join(lines[4:matrix_start]).strip()
    expected_returns = [float(value) for value in expected_returns_block.strip('[]').split()]

    # Extract covariance matrix
    covariance_block = ''.join(lines[matrix_start:]).strip()
    covariance_list = [
        [float(value) for value in row.replace('[', '').replace(']', '').split()]
        for row in covariance_block.split(']') if row.strip()  # Split rows on `]` and filter empty rows
    ]
    covariance_matrix = np.asmatrix(covariance_list)

    # Extract return deviations and hedge costs
    return_dev = []
    hedge_cost = []
    for asset in range(len(expected_returns)):
        return_dev.append(random.uniform(expected_returns[asset]/2, expected_returns[asset]))
        hedge_cost.append(random.uniform(expected_returns[asset]*0.1, expected_returns[asset]*0.2))


    return seed, n, k, max_variance, expected_returns, covariance_matrix, return_dev, hedge_cost
