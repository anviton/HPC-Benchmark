#!/bin/bash

nb_replications=30

for opti in {1..3}
do
    echo "[Recursion] - run C -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Recursion/C/fibo/fibonacci.c -opt $opti
    echo -e "\n\n"

    echo "[Recursion] - run C++ -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Recursion/C++/fibo/fibonacci.cpp -opt $opti
    echo -e "\n\n"

    echo "[Recursion] - run Fortran -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Recursion/Fortran/fibo/fibonacci.f90 -opt $opti
    echo -e "\n\n"

    echo "[Recursion] - run Rust -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Recursion/Rust/fibo/fibonacci.rs -opt $opti
    echo -e "\n\n"
done

