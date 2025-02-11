import argparse
import sys
import os
import subprocess

sys.path.append(os.path.join(os.path.dirname(__file__), "src"))

import knapsack_cont_budg  
import knapsack_cont_knap
import portfolio_cont_budg
import shortest_path_cont_budg


if __name__ == "__main__":
  parser = argparse.ArgumentParser()
  parser.add_argument('--problem_class', required = True,
                      help = 'The problem class to be solved - "shortest_path", "knapsack" or "portfolio".')
  parser.add_argument('--uncertainty', required = True,
                      help = 'The type of uncertainty set - "cont_knapsack", "cont_budgeted" or "discrete".')
  parser.add_argument('--instance_size', required = True,
                      help = "Size of the instance - available sizes are stated in the README.md")
  parser.add_argument('--instance_id', required = True,
                      help = 'The instance ID - an integer in \{1,...,20}.')
  parser.add_argument('--approach', required = True,
                      help = 'The approach to be used - "robust" or "bilevel".')
  parser.add_argument('--mibs_directory', required = False, default = "./dist/bin/mibs",
                      help = 'Directory of your MibS installation')
  
  arguments = parser.parse_args()
  problem_class = arguments.problem_class
  uncertainty = arguments.uncertainty
  instance_size = arguments.instance_size
  instance_id = arguments.instance_id
  approach = arguments.approach
  mibs_directory = arguments.mibs_directory


  if problem_class not in ["shortest_path", "knapsack", "portfolio"]:
    raise TypeError("The problem class has to be either 'shortest_path', 'knapsack' or 'portfolio'!")
  if uncertainty not in ["cont_knapsack", "cont_budgeted", "discrete"]:
    raise TypeError("The uncertainty set has to be either 'cont_knapsack', 'cont_budgeted' or 'discrete'!")
  if approach not in ["robust", "bilevel"]:
    raise TypeError("The approach has to be either 'robust' or 'bilevel'!")
  if instane_id not in range(1,21):
    raise TypeError("Only instance IDs between 1 and 20 are available.")
  
  # shortest path
  if problem_class == "shortest_path":
    if uncertainty == "cont_knapsack":
      raise TypeError("There are no shortest path instances with continuous knapsack uncertainty!")
    if uncertainty == "cont_budgeted":
      instance_file = "./instances/shortest_path/continuous_budgeted_uncertainty/nohadani_sharma_" + str(instance_size) + "_" + str(instance_id) + ".graphml"
      if approach == "bilevel":
        shortest_path_cont_budg.solve_instance_bilevel(instance_file)
      if approach == "robust":
        shortest_path_cont_budg.solve_instance_robust(instance_file)
    if uncertainty == "discrete":
      instance_file = "./instances/shortest_path/discrete_knapsack_uncertainty/nohadani_" + str(instance_size) + "_" + str(instance_id) + ".mps"
      if approach == "robust":
        raise TypeError("There is no robust approach for discrete uncertainty sets!")
      if approach == "bilevel":
        command = [mibs_directory, '-instance', instance_file, '-feasCheckSolver CPLEX']
        subprocess.run(command) 

  # knapsack
  if problem_class == "knapsack":
    if uncertainty == "cont_knapsack":
      instance_file = "./instances/knapsack/continuous_knapsack_uncertainty/knapsack_" + str(instance_size) + "_" + str(instance_id) + ".kp"
      if approach == "bilevel":
        knapsack_cont_knap.solve_instance_bilevel(instance_file)
      if approach == "robust": 
        knapsack_cont_knap.solve_instance_robust(instance_file)
    if uncertainty == "cont_budgeted":
      instance_file = "./instances/knapsack/continuous_budgeted_uncertainty/knapsack_" + str(instance_size) + "_" + str(instance_id) + ".kp"
      if approach == "bilevel":
        knapsack_cont_budg.solve_instance_bilevel(instance_file)
      if approach == "robust":
        knapsack_cont_budg.solve_instance_bilevel(instance_file)
    if uncertainty == "discrete":
      instance_file = "./instances/knapsack/discrete_knapsack_uncertainty/knapsack_" + str(instance_size) + "_" + str(instance_id) + ".mps"
      if approach == "robust":
        raise TypeError("There is no robust approach for discrete uncertainty sets!")
      if approach == "bilevel":
        command = [mibs_directory, '-instance', instance_file, '-feasCheckSolver CPLEX']
        subprocess.run(command)


  #portfolio
  if problem_class == "portfolio":
    if uncertainty == "cont_knapsack":
      raise TypeError("There are no portfolio instances with continuous knapsack uncertainty!")
    if uncertainty == "discrete":
      raise TypeError("There are no portfolio instances with discrete uncertainties!")
    if uncertainty == "cont_budgeted":
      instance_file = "./instances/portfolio/continuous_budgeted_uncertainty/portfolio_" + str(instance_size) + "_" + str(instance_id) + ".kp"
      if approach == "bilevel":
        portfolio_cont_budg.solve_instance_bilevel(instance_file)
      if approach == "robust":
        portfolio_cont_budg.solve_instance_robust(instance_file)
