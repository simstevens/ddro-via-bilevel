# Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems

## Description
This repository contains the open-source implementations accompanying the paper "Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems" by Henri Lefebvre, Martin Schmidt, Simon Stevens and Johannes Thürauf.

## Prerequisites
The methods are implemented in `Python 3.12.2` and `Gurobi 11.0.3` is used to solve the arising single-level reformulations. Visit [Gurobi's official website](https://www.gurobi.com/academia/academic-program-and-licenses) for details on how to obtain a license. In addition to Gurobi, the following Python packages and modules are required:

* numpy
* argparse
* random
* networkx
* subprocess
* os
* sys

Moreover, the bilevel problems obtained for the discrete uncertainty sets can either be solved using `MibS 1.2` or `Yasol 4.0.1.5`. For more details on how to install `MibS` visit the [MibS Quick Start Guide](https://coin-or.github.io/MibS/). For more detail on how to install `Yasol` visit the [Yasol Website](https://tm-vm-2.wiwi.uni-siegen.de/yasol-software.html).

## Usage
### Continuous Uncertainty Sets
From the [main directory](./), run
```
python3 -m ddro-via-bilevel --problem_class problem --uncertainty uncertainty --instance_size instance_size --instance_id instance_id --approach reformulation_approach
```
to solve the specified instance with a continuous uncertainty set and the specified approach.

#### Necessary arguments:
`--problem_class`
The problem that is to be solved, e.g. 'shortest_path', 'knapsack' or 'portfolio'.

`--uncertainty`
The kind of uncertainty that is to be chosen, e.g. 'cont_budgeted', 'cont_knapsack' or 'discrete'.

`--instance_size`
The size of the instance. The following sizes are available for the different problem / uncertainty combinations:

|               | Shortest Path      | Knapsack                  | Portfolio           |
|---------------|--------------------|---------------------------|---------------------|
| Cont_Budgeted | {50, 75, ..., 300} | {1000, 2000, ..., 10 000} | {50, 100, ..., 500} |
| Cont_Knapsack |          -         | {1000, 2000, ..., 10 000} |          -          |
| Discrete      |   {2, 3, ..., 10}  |     {20, 40, ..., 140}    |          -          |

`--instance_id`
The id of the instance. Can be chosen between 1 and 20.

`--approach`
The approach that shall be used to solve the problem, e.g. 'robust' or 'bilevel' for continuous uncertainties and 'mibs' or 'yasol' for discrete uncertainties.

### Discrete Uncertainty Sets
To solve instances with discrete uncertainty sets using `MibS`, the argument `--mibs_directory` can be added to specify the directory where `MibS` is installed. The default value is `/dist/bin/mibs`.

To solve instances with discrete uncertainty sets using `Yasol`, the argument `--yasol_directory` can be addedto specify the directory where `Yasol` is installed. The default value is `/dist/bin/yasol`. 
The argument `--yasol_type` has to be added to specify the type of `.qlp` formulation that should be used. The choices are `bilevel`, `existeval` and `implicit`.  
