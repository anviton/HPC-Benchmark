
echo "[Recursion] - run C 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py c ../../../Algo/Recursion/C/fibo/fibonacci.c
echo -e "\n\n"

echo "[Recursion] - run C++ 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py cpp ../../../Algo/Recursion/C++/fibo/fibonacci.cpp
echo -e "\n\n"

echo "[Recursion] - run Erlang 30 times"
python3 ../scripts-py/replications/measure_multiple_exec.py erlang ../../Algo/Recursion/Erlang/fibo/fibonacci.erl
echo -e "\n\n"

echo "[Recursion] - run Fortran 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py fortran ../../../Algo/Recursion/Fortran/fibo/fibonacci.f90
echo -e "\n\n"

echo "[Recursion] - run Java 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py Java ../../../Algo/Recursion/Java/fibo/src/Fibonacci.java
echo -e "\n\n"

echo "[Recursion] - run Python 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py Python ../../../Algo/Recursion/Python/fibo/fibonacci.py
echo -e "\n\n"

echo "[Recursion] - run Ruby 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py Ruby ../../../Algo/Recursion/Ruby/fibo/fibonacci.rb
echo -e "\n\n"

echo "[Recursion] - run Rust 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py Rust ../../../Algo/Recursion/Rust/fibo/fibonacci.rs
echo -e "\n\n"



