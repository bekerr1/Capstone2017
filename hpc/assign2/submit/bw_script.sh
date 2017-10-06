#!/bin/sh
#PBS -l nodes=1:ppn=8

operations=1500
array=(1 2 3 4 5 6 7 8 9 10 20 30 40 50 60 70 80 90 100 200 255 256 257 300 400 500 600 700 800 900 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 20000 30000 40000 50000 60000 70000 80000 90000 100000 200000 300000 400000 500000 600000 700000 800000 900000 1000000)
rm -rf log.txt bandwidth.txt

for ele in ${array[@]};
do
	echo "Performing ./a.out $ele $operations" >> log.txt
	./bandwidth $ele $operations >> bandwidth.txt
done
echo "Completed Successfully" >> log.txt
