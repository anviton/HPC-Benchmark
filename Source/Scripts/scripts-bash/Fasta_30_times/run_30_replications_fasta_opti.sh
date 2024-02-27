#!/bin/bash

nb_replications=30
parameter="25000000"


for opti in {1..3}
do
    echo "[Fasta] - run C -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Fasta/C/fasta/fasta.c -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fasta] - run C++ -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Fasta/C++/fasta/fasta.cpp -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fasta] - run Fortran -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Fasta/Fortran/fasta/fasta.f90 -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fasta] - run Rust -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Fasta/Rust/fasta/fasta.rs -a $parameter -opt $opti
    echo -e "\n\n"
done
