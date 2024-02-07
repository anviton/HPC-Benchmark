#!/bin/bash

base_path="./"

cd "${base_path}C/sort"
gcc bubble-sort.c -o bubble-sort_c
echo "[Bubble sort] - run C file..."
time ./bubble-sort_c
cd - > /dev/null

cd "${base_path}Python/sort"
echo "[Bubble sort] - run Python file..."
time python3 bubble-sort.py
cd - > /dev/null


cd "${base_path}Rust/sort"
rustc bubble-sort.rs -o bubble-sort_rust
echo "[Bubble sort] - run Rust file..."
time ./bubble-sort_rust
cd - > /dev/null

cd "${base_path}Erlang/sort"
erlc bubble_sort.erl
echo "[Bubble sort] - run Erlang file..."
time erl -noshell -s bubble_sort main -s init stop
cd - > /dev/null
