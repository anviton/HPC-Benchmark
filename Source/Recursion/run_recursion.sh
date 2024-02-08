#!/bin/bash

base_path="./"

cd "${base_path}C/fibo"
gcc fibonacci.c -o fibo_c
echo "[Recursion] - run C file..."
time ./fibo_c
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/fibo"
g++ fibo.cpp -o fibo_cpp
echo "[Recursion] - run C++ file..."
time ./fibo_cpp
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Erlang/fibo"
erlc fibonacci.erl
echo "[Recursion] - run Erlang file..."
time erl -noshell -s fibonacci main -s init stop
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Fortran/fibo"
gfortran -o fibo_fortran ./*.f90
echo "[Recursion] - run Fortran file..."
time ./fibo_fortran
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Java/fibo"
javac -d bin -sourcepath src src/Fibonacci.java
echo "[Recursion] - run Java file..."
time java -cp bin Fibo
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Python/fibo"
echo "[Recursion] - run Python file..."
time python3 fibonacci.py
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Ruby/fibo"
echo "[Recursion] - run Ruby file..."
time ruby fibonacci.rb
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Rust/fibo"
rustc fibonacci.rs -o fibo_rust
echo "[Recursion] - run Rust file..."
time ./fibo_rust
cd - > /dev/null
echo -e "\n\n"
