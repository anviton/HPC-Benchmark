#!/bin/bash

base_path="./"


# BINARY TREES

cd "${base_path}C/binary_trees"
gcc binary-trees.c -o binary-trees_c
echo "[Binary trees] - run C file..."
time ./binary-trees_c
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/binary_trees"
g++ binary-trees.cpp -o binary-trees_cpp
echo "[Binary trees] - run C++ file..."
time ./binary-trees_cpp
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/binary_trees"
g++ binary-trees_smartPtr.cpp -o binary-trees_smartPtr_cpp
echo "[Binary trees] - run C++ file with Smart Pointers..."
time ./binary-trees_smartPtr_cpp
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Erlang/binary_trees"
erlc binary_trees.erl
echo "[Binary trees] - run Erlang file..."
time erl -noshell -s binary_trees main -s init stop
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Fortran/binary_trees"
gfortran -o binary-trees_fortran ./*.f90
echo "[Binary trees] - run Fortran file..."
time ./binary-trees_fortran
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Java/binary_trees"
javac -d bin -sourcepath src src/BinaryTree.java
echo "[Binary trees] - run Java file..."
time java -cp bin BinaryTree
cd - > /dev/null
echo -e "\n\n"


cd "${base_path}Python/binary_trees"
echo "[Binary trees] - run Python file..."
time python3 binary-trees.py
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Ruby/binary_trees"
echo "[Binary trees] - run Ruby file..."
time ruby binary-trees.rb
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Rust/binary_trees"
rustc binary-trees.rs -o binary-trees_rust
echo "[Binary trees] - run Rust file..."
time ./binary-trees_rust
cd - > /dev/null
echo -e "\n\n"
