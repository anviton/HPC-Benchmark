nb_replications=30

echo "[Recursion] - run C $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Recursion/C/fibo/fibonacci.c
echo -e "\n\n"

echo "[Recursion] - run C++ $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Recursion/C++/fibo/fibonacci.cpp
echo -e "\n\n"

echo "[Recursion] - run Erlang $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l erlang -p ../../../Algo/Recursion/Erlang/fibo/fibonacci.erl
echo -e "\n\n"

echo "[Recursion] - run Fortran $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Recursion/Fortran/fibo/fibonacci.f90
echo -e "\n\n"

echo "[Recursion] - run Java $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Java -p ../../../Algo/Recursion/Java/fibo/src/Fibonacci.java
echo -e "\n\n"

echo "[Recursion] - run Python $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Python -p ../../../Algo/Recursion/Python/fibo/fibonacci.py
echo -e "\n\n"

echo "[Recursion] - run Ruby $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Ruby -p ../../../Algo/Recursion/Ruby/fibo/fibonacci.rb
echo -e "\n\n"

echo "[Recursion] - run Rust $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Recursion/Rust/fibo/fibonacci.rs
echo -e "\n\n"



