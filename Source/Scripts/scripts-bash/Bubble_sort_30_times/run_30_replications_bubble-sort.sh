nb_replications=30

echo "[Bubble Sort] - run C $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Sort/C/bubble_sort/bubble-sort.c
echo -e "\n\n"

echo "[Bubble Sort] - run C++ $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Sort/C++/bubble_sort/bubble-sort.cpp
echo -e "\n\n"

echo "[Bubble Sort] - run Erlang $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l erlang -p ../../../Algo/Sort/Erlang/bubble_sort/bubble_sort.erl
echo -e "\n\n"

echo "[Bubble Sort] - run Fortran $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Sort/Fortran/bubble_sort/bubble_sort.f90 -o "-ffree-line-length-none -fmax-array-constructor=1000000"
echo -e "\n\n"

echo "[Bubble Sort] - run Java $nb_replications times"
cd "../../../Algo/Sort/Java/bubble_sort"
python3 ../../../../Scripts/scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l java -p src/BubbleSort.java
cd - > /dev/null
echo -e "\n\n"

echo "[Bubble Sort] - run Python $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Python -p ../../../Algo/Sort/Python/bubble_sort/bubble-sort.py
echo -e "\n\n"

echo "[Bubble Sort] - run Ruby $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Ruby -p ../../../Algo/Sort/Ruby/bubble_sort/bubble-sort.rb
echo -e "\n\n"

echo "[Bubble Sort] - run Rust $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Sort/Rust/bubble_sort/bubble-sort.rs
echo -e "\n\n"