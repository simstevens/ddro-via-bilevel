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
import portfolio_cont_knap
import shortest_path_cont_budg
import shortest_path_cont_knap

def validate_arguments(arguments):
    """validate the parsed arguments"""

    if arguments.problem_class not in {"shortest_path", "knapsack", "portfolio"}:
        raise ValueError("Invalid problem class! Choose from 'shortest_path', 'knapsack', or 'portfolio'.")
    if arguments.uncertainty not in {"cont_knapsack", "cont_budgeted", "discrete_knapsack", "discrete_budgeted"}:
        raise ValueError("Invalid uncertainty type! Choose from 'cont_knapsack', 'cont_budgeted', 'discrete_knapsack', or 'discrete_budgeted'.")
    if arguments.approach not in {"robust", "bilevel", "mibs", "yasol"}:
        raise ValueError("Invalid approach! Choose either 'robust', 'bilevel', 'mibs', or 'yasol'.")
    if arguments.yasol_type and arguments.yasol_type not in {"bilevel", "existeval", "implicit"}:
        raise ValueError("Invalid yasol type! Choose from 'bilevel', 'existeval', or 'implicit'.")
    if arguments.hedging_cost is not None and arguments.problem_class != "shortest_path":
        raise ValueError("Hedging cost can only be specified for the shortest path problem!")

def get_instance_file(problem_class, uncertainty, instance_size, instance_id, approach, yasol_type=None):
    """get the instance file based on the parsed arguments"""
    if uncertainty == "cont_knapsack" or uncertainty == "cont_budgeted":
        base_path = f"./instances/{problem_class}_{uncertainty}/{problem_class}_{instance_size}_{instance_id}"
    else:
        base_path = f"./instances/{problem_class}_{uncertainty}/{problem_class}_{instance_size}_{instance_id}"
    
    # Handle yasol .qlp files for discrete instances
    if uncertainty in {"discrete_knapsack", "discrete_budgeted"} and approach == "yasol":
        instance_file = f"{base_path}_{yasol_type}.qlp"
        if not os.path.exists(instance_file):
            raise ValueError(f"Yasol instance file '{instance_file}' not found. The requested instance size may not be available.")
        return instance_file
    else:
      # Handle other file types
      extensions = {
          "shortest_path": {"cont_budgeted": ".graphml", "cont_knapsack": ".graphml", "discrete_knapsack": ".mps", "discrete_budgeted": ".mps"},
          "knapsack": {"cont_knapsack": ".kp", "cont_budgeted": ".kp", "discrete_knapsack": ".mps", "discrete_budgeted": ".mps"},
          "portfolio": {"cont_budgeted": ".po", "cont_knapsack": ".po"},
      }
      instance_file = base_path + extensions.get(problem_class, {}).get(uncertainty, "")
    
    if not os.path.exists(instance_file):
        raise ValueError(f"Instance file '{instance_file}' not found. The requested instance size may not be available.")
    
    return instance_file

def solve_instance(problem_class, uncertainty, approach, instance_file, mibs_directory, yasol_directory=None, hedging_cost=None):
    """solve the parsed instance"""
    
    solvers = {
        ("shortest_path", "cont_budgeted", "bilevel"): shortest_path_cont_budg.solve_instance_bilevel,
        ("shortest_path", "cont_budgeted", "robust"): shortest_path_cont_budg.solve_instance_robust,
        ("shortest_path", "cont_knapsack", "bilevel"): shortest_path_cont_knap.solve_instance_bilevel,
        ("shortest_path", "cont_knapsack", "robust"): shortest_path_cont_knap.solve_instance_robust,
        ("knapsack", "cont_knapsack", "bilevel"): knapsack_cont_knap.solve_instance_bilevel,
        ("knapsack", "cont_knapsack", "robust"): knapsack_cont_knap.solve_instance_robust,
        ("knapsack", "cont_budgeted", "bilevel"): knapsack_cont_budg.solve_instance_bilevel,
        ("knapsack", "cont_budgeted", "robust"): knapsack_cont_budg.solve_instance_robust,
        ("portfolio", "cont_budgeted", "bilevel"): portfolio_cont_budg.solve_instance_bilevel,
        ("portfolio", "cont_budgeted", "robust"): portfolio_cont_budg.solve_instance_robust,
        ("portfolio", "cont_knapsack", "bilevel"): portfolio_cont_knap.solve_instance_bilevel,
        ("portfolio", "cont_knapsack", "robust"): portfolio_cont_knap.solve_instance_robust,
    }
    solver = solvers.get((problem_class, uncertainty, approach))
    
    if solver:
        if hedging_cost is None:
            solver(instance_file)
        else:
            solver(instance_file, hedging_cost)
    elif uncertainty.startswith("discrete") and (approach == "yasol" or approach == "mibs"):
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
    parser.add_argument('--instance_size', required=False)
    parser.add_argument('--instance_id', required=False)
    parser.add_argument('--approach', required=True)
    parser.add_argument('--mibs_directory', required=False, default="./dist/bin/mibs")
    parser.add_argument('--yasol_directory', required=False, help="Directory for the yasol solver")
    parser.add_argument('--yasol_type', required=False, choices=['bilevel', 'existeval', 'implicit'],
                       help="Type of yasol .qlp file to use (bilevel, existeval, or implicit)", default='bilevel')
    parser.add_argument('--instance_file', required=False, help="Direct path to the instance file (overrides other instance parameters)")
    parser.add_argument('--hedging-cost', required=False, type=float, help="Hedging cost for bilevel problems")
    
    args = parser.parse_args()
    validate_arguments(args)
    if args.instance_file:
        instance_file = args.instance_file
    else:
        instance_file = get_instance_file(args.problem_class, args.uncertainty, args.instance_size, args.instance_id, args.approach, args.yasol_type)
    solve_instance(args.problem_class, args.uncertainty, args.approach, instance_file, args.mibs_directory, args.yasol_directory, args.hedging_cost)