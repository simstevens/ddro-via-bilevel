import sys
from os import listdir
from os.path import isfile, join
import gurobipy as gp 
from gurobipy import GRB

from parse_portfolio import *
from portfolio_bilevel import *
from portfolio_robust import *
from portfolio_nominal import *

def solve_instance(file_name):
    # parse .po file
    seed, n, k, max_variance, nom_return, covariance, return_dev, hedge_cost = parse_file(file_name)

    # solve instance with robust reformulation
    portfolio_robust(nom_return, return_dev, hedge_cost, covariance, max_variance, k, file_name,)


def main():
    if len(sys.argv) != 2:
        raise RuntimeError("Expected 1 argument.")

    # parse file to instance
    path_to_instance = sys.argv[1]

    print(f"Solving instance {path_to_instance}")

    # solve instance
    solve_instance(path_to_instance)


if __name__ == "__main__":
    main()