#!/bin/bash

base_path="./"

size="25000000"

# FASTA

cd "${base_path}C/fasta"
gcc fasta.c -o fasta_c
echo "[Fasta] - run C file..."
time ./fasta_c $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/fasta"
g++ fasta.cpp -o fasta_cpp
echo "[Fasta] - run C++ file..."
time ./fasta_cpp $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Erlang/fasta"
erlc fasta.erl
echo "[Fasta] - run Erlang file..."
time erl -noshell -s fasta main $size -s init stop > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Fortran/fasta"
gfortran -o fasta_fortran ./*.f90
echo "[Fasta] - run Fortran file..."
time ./fasta_fortran $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Java/fasta"
javac -d bin -sourcepath src src/fasta.java
echo "[Fasta] - run Java file..."
time java -cp bin fasta $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Python/fasta"
echo "[Fasta] - run Python file..."
time python3 fasta.py $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Ruby/fasta"
echo "[Fasta] - run Ruby file..."
time ruby fasta.rb $size > /dev/null
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Rust/fasta"
rustc -A warnings fasta.rs -o fasta_rust 
echo "[Fasta] - run Rust file..."
time ./fasta_rust $size > /dev/null
cd - > /dev/null
echo -e "\n\n"
