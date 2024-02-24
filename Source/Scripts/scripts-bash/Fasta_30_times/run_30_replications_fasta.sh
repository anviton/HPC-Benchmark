nb_replications=30
parameter="25000000"

echo "[Fasta] - run C $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l c -p ../../../Algo/Fasta/C/fasta/fasta.c -a $parameter
echo -e "\n\n"

echo "[Fasta] - run C++ $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l cpp -p ../../../Algo/Fasta/C++/fasta/fasta.cpp -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Erlang $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l erlang -p ../../../Algo/Fasta/Erlang/fasta/fasta.erl -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Fortran $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l fortran -p ../../../Algo/Fasta/Fortran/fasta/fasta.f90 -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Java $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l java -p ../../../Algo/Fasta/Java/fasta/src/fasta.java -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Python $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Python -p ../../../Algo/Fasta/Python/fasta/fasta.py -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Ruby $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Ruby -p ../../../Algo/Fasta/Ruby/fasta/fasta.rb -a $parameter
echo -e "\n\n"

echo "[Fasta] - run Rust $nb_replications times"
python3 ../../scripts-py/replications/measure_multiple_exec.py -r $nb_replications -l Rust -p ../../../Algo/Fasta/Rust/fasta/fasta.rs -a $parameter
echo -e "\n\n"
