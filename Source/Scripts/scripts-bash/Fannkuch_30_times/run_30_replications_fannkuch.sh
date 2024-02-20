nb_replications=30
parameter=12

echo "[Fannkuch] - run C $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Fannkuch/C/fannkuch_redux/fannkuch-redux.c -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run C++ $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Fannkuch/C++/fannkuch_redux/fannkuch-redux.cpp -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Erlang $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l erlang -p ../../../Algo/Fannkuch/Erlang/fannkuch_redux/fannkuch.erl -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Fortran $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Fannkuch/Fortran/fannkuch_redux/fannkuch-redux.f90 -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Java $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l java -p ../../../Algo/Fannkuch/Java/fannkuch_redux/src/fannkuchredux.java -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Python $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Python -p ../../../Algo/Fannkuch/Python/fannkuch_redux/fannkuch-redux.py -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Ruby $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Ruby -p ../../../Algo/Fannkuch/Ruby/fannkuch_redux/fannkuch-redux.rb -a $parameter
echo -e "\n\n"

echo "[Fannkuch] - run Rust $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Fannkuch/Rust/fannkuch_redux/fannkuch-redux.rs -a $parameter
echo -e "\n\n"
