# #!/bin/bash

base_path="./"

cd "${base_path}C/bubble_sort"
gcc bubble-sort.c -o bubble-sort_c
echo "[Bubble sort] - run C file..."
time ./bubble-sort_c
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}C++/bubble_sort"
g++ bubble-sort.cpp -o bubble-sort_cpp
echo "[Recursion] - run C++ file..."
time ./bubble-sort_cpp
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Erlang/bubble_sort"
erlc bubble_sort.erl
echo "[Bubble sort] - run Erlang file..."
time erl -noshell -s bubble_sort main -s init stop
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Fortran/bubble_sort"
gfortran -o bubble-sort_fortran -ffree-line-length-none -fmax-array-constructor=1000000 ./*.f90
echo "[Bubble sort] - run Fortran file..."
time ./bubble-sort_fortran
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Java/bubble_sort"
javac -d bin -sourcepath src src/BubbleSort.java
echo "[Recursion] - run Java file..."
time java -cp bin BubbleSort
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Python/bubble_sort"
echo "[Bubble sort] - run Python file..."
time python3 bubble-sort.py
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Ruby/bubble-sort"
echo "[Recursion] - run Ruby file..."
time ruby bubble-sort.rb
cd - > /dev/null
echo -e "\n\n"

cd "${base_path}Rust/bubble_sort"
rustc bubble-sort.rs -o bubble-sort_rust
echo "[Bubble sort] - run Rust file..."
time ./bubble-sort_rust
cd - > /dev/null
echo -e "\n\n"
