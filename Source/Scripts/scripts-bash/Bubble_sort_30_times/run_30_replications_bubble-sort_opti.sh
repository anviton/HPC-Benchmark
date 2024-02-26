#!/bin/bash

nb_replications=30

for opti in {1..3}
do
    echo "[Bubble Sort] - run C -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Sort/C/bubble_sort/bubble-sort.c -opt $opti
    echo -e "\n\n"

    echo "[Bubble Sort] - run C++ -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Sort/C++/bubble_sort/bubble-sort.cpp -opt $opti
    echo -e "\n\n"

    echo "[Bubble Sort] - run Fortran -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Sort/Fortran/bubble_sort/bubble_sort.f90 -o "-ffree-line-length-none -fmax-array-constructor=1000000" -opt $opti
    echo -e "\n\n"

    echo "[Bubble Sort] - run Rust -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Sort/Rust/bubble_sort/bubble-sort.rs -opt $opti
    echo -e "\n\n"
done