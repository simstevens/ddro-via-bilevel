import argparse
import sys
import os
import subprocess

sys.path.append(os.path.join(os.path.dirname(__file__), "src"))

import knapsack_cont_budg
import knapsack_cont_knap
import portfolio_cont_budg
import shortest_path_cont_budg

def validate_arguments(arguments):
    if arguments.problem_class not in {"shortest_path", "knapsack", "portfolio"}:
        raise ValueError("Invalid problem class! Choose from 'shortest_path', 'knapsack', or 'portfolio'.")
    if arguments.uncertainty not in {"cont_knapsack", "cont_budgeted", "discrete"}:
        raise ValueError("Invalid uncertainty type! Choose from 'cont_knapsack', 'cont_budgeted', or 'discrete'.")
    if arguments.approach not in {"robust", "bilevel"}:
        raise ValueError("Invalid approach! Choose either 'robust' or 'bilevel'.")
    if not (1 <= int(arguments.instance_id) <= 20):
        raise ValueError("Instance ID must be between 1 and 20.")

def get_instance_file(problem_class, uncertainty, instance_size, instance_id):
    base_path = f"./instances/{problem_class}/{uncertainty}/{problem_class}_{instance_size}_{instance_id}"
    extensions = {
        "shortest_path": {"cont_budgeted": ".graphml", "discrete": ".mps"},
        "knapsack": {"cont_knapsack": ".kp", "cont_budgeted": ".kp", "discrete": ".mps"},
        "portfolio": {"cont_budgeted": ".po"},
    }
    return base_path + extensions.get(problem_class, {}).get(uncertainty, "")

def solve_instance(problem_class, uncertainty, approach, instance_file, mibs_directory):
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
    elif problem_class == "shortest_path" and uncertainty == "discrete" and approach == "bilevel":
        subprocess.run([mibs_directory, '-instance', instance_file, '-feasCheckSolver', 'CPLEX'])
    elif problem_class == "knapsack" and uncertainty == "discrete" and approach == "bilevel":
        subprocess.run([mibs_directory, '-instance', instance_file, '-feasCheckSolver', 'CPLEX'])
    else:
        raise ValueError("Invalid combination of parameters!")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--problem_class', required=True)
    parser.add_argument('--uncertainty', required=True)
    parser.add_argument('--instance_size', required=True)
    parser.add_argument('--instance_id', required=True)
    parser.add_argument('--approach', required=True)
    parser.add_argument('--mibs_directory', required=False, default="./dist/bin/mibs")
    
    args = parser.parse_args()
    validate_arguments(args)
    instance_file = get_instance_file(args.problem_class, args.uncertainty, args.instance_size, args.instance_id)
    solve_instance(args.problem_class, args.uncertainty, args.approach, instance_file, args.mibs_directory)