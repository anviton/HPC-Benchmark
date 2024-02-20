
echo "[Binary trees] - run C 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l c -p ../../../Algo/BinaryTrees/C/binary_trees/binary-trees.c
echo -e "\n\n"

echo "[Binary trees] - run C++ 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l cpp -p ../../../Algo/BinaryTrees/C++/binary_trees/binary-trees.cpp
echo -e "\n\n"

echo "[Binary trees] - run Erlang 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l erlang -p ../../../Algo/BinaryTrees/Erlang/binary_trees/binary_trees.erl
echo -e "\n\n"

echo "[Binary trees] - run Fortran 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l fortran -p ../../../Algo/BinaryTrees/Fortran/binary_trees/binary_trees.f90
echo -e "\n\n"

echo "[Binary trees] - run Java 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l java -p ../../../Algo/BinaryTrees/Java/binary_trees/src/BinaryTree.java
echo -e "\n\n"

echo "[Binary trees] - run Python 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l Python -p ../../../Algo/BinaryTrees/Python/binary_trees/binary-trees.py
echo -e "\n\n"

echo "[Binary trees] - run Ruby 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l Ruby -p ../../../Algo/BinaryTrees/Ruby/binary_trees/binary-trees.rb
echo -e "\n\n"

echo "[Binary trees] - run Rust 30 times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -l Rust -p ../../../Algo/BinaryTrees/Rust/binary_trees/binary-trees.rs
echo -e "\n\n"