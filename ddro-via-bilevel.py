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
import argparse
import sys
import os
import subprocess

# Local imports
sys.path.append(os.path.join(os.path.dirname(__file__), "src"))

import knapsack_cont_budg
import knapsack_cont_knap
import portfolio_cont_budg
import shortest_path_cont_budg

def validate_arguments(arguments):
    """validate the parsed arguments"""

    if arguments.problem_class not in {"shortest_path", "knapsack", "portfolio"}:
        raise ValueError("Invalid problem class! Choose from 'shortest_path', 'knapsack', or 'portfolio'.")
    if arguments.uncertainty not in {"cont_knapsack", "cont_budgeted", "discrete"}:
        raise ValueError("Invalid uncertainty type! Choose from 'cont_knapsack', 'cont_budgeted', or 'discrete'.")
    if arguments.approach not in {"robust", "bilevel", "mibs", "yasol"}:
        raise ValueError("Invalid approach! Choose either 'robust', 'bilevel', 'mibs', or 'yasol'.")
    if not (1 <= int(arguments.instance_id) <= 20):
        raise ValueError("Instance ID must be between 1 and 20.")
    if arguments.yasol_type and arguments.yasol_type not in {"bilevel", "existeval", "implicit"}:
        raise ValueError("Invalid yasol type! Choose from 'bilevel', 'existeval', or 'implicit'.")

def get_instance_file(problem_class, uncertainty, instance_size, instance_id, approach, yasol_type=None):
    """get the instance file based on the parsed arguments"""

    base_path = f"./instances/{problem_class}/{uncertainty}/{problem_class}_{instance_size}_{instance_id}"
    
    # Handle yasol .qlp files for discrete instances
    if uncertainty == "discrete" and approach == "yasol":
        instance_file = f"{base_path}_{yasol_type}.qlp"
        if not os.path.exists(instance_file):
            raise ValueError(f"Yasol instance file '{instance_file}' not found. The requested instance size may not be available.")
        return instance_file
    else:
      # Handle other file types
      extensions = {
          "shortest_path": {"cont_budgeted": ".graphml", "discrete": ".mps"},
          "knapsack": {"cont_knapsack": ".kp", "cont_budgeted": ".kp", "discrete": ".mps"},
          "portfolio": {"cont_budgeted": ".po"},
      }
      instance_file = base_path + extensions.get(problem_class, {}).get(uncertainty, "")
    
    if not os.path.exists(instance_file):
        raise ValueError(f"Instance file '{instance_file}' not found. The requested instance size may not be available.")
    
    return instance_file

def solve_instance(problem_class, uncertainty, approach, instance_file, mibs_directory, yasol_directory=None):
    """solve the parsed instance"""
    
    solvers = {
        ("shortest_path", "cont_budgeted", "bilevel"): shortest_path_cont_budg.solve_instance_bilevel,
        ("shortest_path", "cont_budgeted", "robust"): shortest_path_cont_budg.solve_instance_robust,
        ("knapsack", "cont_knapsack", "bilevel"): knapsack_cont_knap.solve_instance_bilevel,
        ("knapsack", "cont_knapsack", "robust"): knapsack_cont_knap.solve_instance_robust,
        ("knapsack", "cont_budgeted", "bilevel"): knapsack_cont_budg.solve_instance_bilevel,
        ("knapsack", "cont_budgeted", "robust"): knapsack_cont_budg.solve_instance_bilevel,
        ("portfolio", "cont_budgeted", "bilevel"): portfolio_cont_budg.solve_instance_bilevel,
        ("portfolio", "cont_budgeted", "robust"): portfolio_cont_budg.solve_instance_robust,
    }
    solver = solvers.get((problem_class, uncertainty, approach))
    
    if solver:
        solver(instance_file)
    elif uncertainty == "discrete" and (approach == "yasol" or approach == "mibs"):
        # Check if this is a yasol .qlp file
        if instance_file.endswith('.qlp') and yasol_directory:
            # Placeholder for yasol solver
            subprocess.run([yasol_directory, instance_file])
        elif instance_file.endswith('.mps'):
            # Use MIBS for .mps files
            subprocess.run([mibs_directory, '-instance', instance_file, '-feasCheckSolver', 'CPLEX'])
        else:
            raise ValueError("Invalid file type or missing solver directory for discrete bilevel problems!")
    else:
        raise ValueError("Invalid combination of parameters!")

if __name__ == "__main__":
    # parse the arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('--problem_class', required=True)
    parser.add_argument('--uncertainty', required=True)
    parser.add_argument('--instance_size', required=True)
    parser.add_argument('--instance_id', required=True)
    parser.add_argument('--approach', required=True)
    parser.add_argument('--mibs_directory', required=False, default="./dist/bin/mibs")
    parser.add_argument('--yasol_directory', required=False, help="Directory for the yasol solver")
    parser.add_argument('--yasol_type', required=False, choices=['bilevel', 'existeval', 'implicit'],
                       help="Type of yasol .qlp file to use (bilevel, existeval, or implicit)")
    
    args = parser.parse_args()
    validate_arguments(args)
    instance_file = get_instance_file(args.problem_class, args.uncertainty, args.instance_size, args.instance_id, args.approach, args.yasol_type)
    solve_instance(args.problem_class, args.uncertainty, args.approach, instance_file, args.mibs_directory, args.yasol_directory)