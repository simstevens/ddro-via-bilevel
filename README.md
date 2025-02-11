# Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems

## Description
This repository contains the code accompanying the paper "Solving Decision-Dependent Robust Problems as Bilevel Optimization Problems" by Henri Lefebvre, Martin Schmidt, Simon Stevens and Johannes Thürauf.

## Prerequisites
The methods are implemented in `Python 3.12.2` and `Gurobi 11.0.3` is used to solve the arising single-level reformulations. Visit [Gurobi's official website](https://www.gurobi.com/academia/academic-program-and-licenses) for details on how to obtain a license. In addition to Gurobi, the following Python packages and modules are required:

* numpy
* sys
* random
* networkx

Moreover, the bilevel problems obtained for the discrete uncertainty sets are solved using `MibS 1.2`. For more details on how to install `MibS` visit the [MibS Quick Start Guide](https://coin-or.github.io/MibS/).

## Usage
From the [main directory](./), run
```
python3 -m src.shortest_path_cont_budg --instance_file file_name --approach approach_value
```
to solve the specified shortest path instance with the specified approach.
