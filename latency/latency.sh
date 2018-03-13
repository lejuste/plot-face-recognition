#!/bin/bash
touch times.txt



declare -a arr=("1.jpg" "2.jpg" "3.jpg" "4.jpg" "5.jpg" "6.jpg" "7.jpg" "8.jpg" "9.jpg" "10.jpeg" "11.jpeg" "12.jpeg" "13.jpeg" "14.jpeg" "15.jpeg" "16.jpeg" "17.jpeg" "18.jpeg" "19.jpeg" "20.jpeg" "21.jpeg" "22.jpeg" "23.jpeg" "24.jpeg" "25.jpeg" "26.jpeg" "27.jpeg" "28.jpeg" "29.jpeg" "30.jpeg")

## now loop through the above array
for i in "${arr[@]}"
do
    echo python latencyPie.py --input $i
    sudo perf stat -o out.txt python latencyPie.py --input $i
    cat out.txt >> times.txt
   # or do whatever with individual element of the array
done




#for i in {1..25}
#do
#    echo python latencyPie.py --size $i
#    sudo perf stat -o out.txt python latencyPie.py --size $i
#    cat out.txt >> times.txt
#done

#cat times.txt | grep 'time'




#Run program and test 1 to 100 loops

#echo Running Threads 1 size x/1
#sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 1"
#python interval-normalize.py output.csv --output new.csv
#python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/1 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-1-mpki.png"
#python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/1 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-1-ipc.png"


