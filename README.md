# Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems

## Description
This repository contains the code accompanying the paper "Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems" by Henri Lefebvre, Martin Schmidt, Simon Stevens and Johannes Thürauf.

## Prerequisites
The methods are implemented in `Python 3.12.2` and `Gurobi 11.0.3` is used to solve the arising single-level reformulations. Visit [Gurobi's official website](https://www.gurobi.com/academia/academic-program-and-licenses) for details on how to obtain a license. In addition to Gurobi, the following Python packages and modules are required:

* numpy
* argparse
* random
* networkx
* subprocess
* os
* sys

Moreover, the bilevel problems obtained for the discrete uncertainty sets are solved using `MibS 1.2`. For more details on how to install `MibS` visit the [MibS Quick Start Guide](https://coin-or.github.io/MibS/).

## Usage
### Continuous Uncertainty Sets
From the [main directory](./), run
```
python3 -m ddro-via-bilevel --problem_class problem --uncertainty uncertainty --instance_size instance_size --instance_id instance_id --approach reformulation_approach
```
to solve the specified instance with a continuous uncertainty set and the specified approach. To solve instances of the other models. 
Necessary arguments:
`--problem_class`
The problem that is to be solved, e.g. 'shortest_path', 'knapsack' or 'portfolio'.
`--uncertainty`
The kind of uncertainty that is to be chosen, e.g. 'cont_budgeted', 'cont_knapsack' or 'discrete'.
`--instance_size`
The size of the instance. The following sizes are available for the following problem / uncertainty combinations:
TABLE WITH AVAILABLE SIZES
`--instance_id`
The id of the instance. Can be chosen between 1 and 20.
`--approach`
The approach that shall be used to solve the problem, e.g. 'robust' or 'bilevel'.

### Discrete Uncertainty Sets
To solve instances with discrete uncertainty set using `MibS`, the argument `--mibs_directory` can be added to specify the directory where `MibS` is installed.
