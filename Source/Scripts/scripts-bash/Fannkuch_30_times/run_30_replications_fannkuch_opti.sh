nb_replications=30
parameter=12

for opti in {1..3}
do
    echo "[Fannkuch] - run C -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Fannkuch/C/fannkuch_redux/fannkuch-redux.c -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fannkuch] - run C++ -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Fannkuch/C++/fannkuch_redux/fannkuch-redux.cpp -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fannkuch] - run Fortran -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Fannkuch/Fortran/fannkuch_redux/fannkuch-redux.f90 -a $parameter -opt $opti
    echo -e "\n\n"

    echo "[Fannkuch] - run Rust -o$opti $nb_replications times"
    python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Fannkuch/Rust/fannkuch_redux/fannkuch-redux.rs -a $parameter -opt $opti
    echo -e "\n\n"
done

