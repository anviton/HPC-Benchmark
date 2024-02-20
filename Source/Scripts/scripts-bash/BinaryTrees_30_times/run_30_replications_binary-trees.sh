nb_replications=30

echo "[Binary trees] - run C $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/BinaryTrees/C/binary_trees/binary-trees.c
echo -e "\n\n"

echo "[Binary trees] - run C++ $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/BinaryTrees/C++/binary_trees/binary-trees.cpp
echo -e "\n\n"

echo "[Binary trees] - run Erlang $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l erlang -p ../../../Algo/BinaryTrees/Erlang/binary_trees/binary_trees.erl
echo -e "\n\n"

echo "[Binary trees] - run Fortran $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/BinaryTrees/Fortran/binary_trees/binary_trees.f90
echo -e "\n\n"

echo "[Binary trees] - run Java $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l java -p ../../../Algo/BinaryTrees/Java/binary_trees/src/BinaryTree.java
echo -e "\n\n"

echo "[Binary trees] - run Python $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Python -p ../../../Algo/BinaryTrees/Python/binary_trees/binary-trees.py
echo -e "\n\n"

echo "[Binary trees] - run Ruby $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Ruby -p ../../../Algo/BinaryTrees/Ruby/binary_trees/binary-trees.rb
echo -e "\n\n"

echo "[Binary trees] - run Rust $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/BinaryTrees/Rust/binary_trees/binary-trees.rs
echo -e "\n\n"