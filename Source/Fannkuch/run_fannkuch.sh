#!/bin/bash

base_path="./"


# FANNKUCH

cd "${base_path}C/fannkuch_redux"
gcc fannkuch-redux.c -o fannkuch-redux_c
echo "[Fannkuch redux] - run C file..."
time ./fannkuch-redux_c
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/fannkuch_redux"
g++ fannkuch-redux.cpp -o fannkuch-redux_cpp
echo "[Fannkuch redux] - run C++ file..."
time ./fannkuch-redux_cpp
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Erlang/fannkuch_redux"
erlc fannkuch.erl
echo "[Fannkuch redux] - run Erlang file..."
time erl -noshell -s fannkuch main -s init stop
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Fortran/fannkuch_redux"
gfortran -o fannkuch-redux_fortran ./*.f90
echo "[Fannkuch redux] - run Fortran file..."
time ./fannkuch-redux_fortran 12
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Java/fannkuch_redux"
javac -d bin -sourcepath src src/fannkuchredux.java
echo "[Fannkuch redux] - run Java file..."
time java -cp bin fannkuchredux 12
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Python/fannkuch_redux"
echo "[Fannkuch redux] - run Python file..."
time python3 fannkuch-redux.py
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Ruby/fannkuch_redux"
echo "[Fannkuch redux] - run Ruby file..."
time ruby fannkuch-redux.rb 12
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Rust/fannkuch_redux"
rustc fannkuch-redux.rs -o fannkuch-redux_rust
echo "[Fannkuch redux] - run Rust file..."
time ./fannkuch-redux_rust
cd - > /dev/null



