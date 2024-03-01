#!/bin/bash

nb_replications=30

for opti in {1..3}
do
    echo "[Binary trees] - run C -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/BinaryTrees/C/binary_trees/binary-trees.c -opt $opti
    echo -e "\n\n"

    echo "[Binary trees] - run C++ -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/BinaryTrees/C++/binary_trees/binary-trees.cpp -opt $opti
    echo -e "\n\n"

    echo "[Binary trees] - run Fortran -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/BinaryTrees/Fortran/binary_trees/binary_trees.f90 -opt $opti
    echo -e "\n\n"

    echo "[Binary trees] - run Rust -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/BinaryTrees/Rust/binary_trees/binary-trees.rs -opt $opti
    echo -e "\n\n"
done