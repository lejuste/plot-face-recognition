#!/bin/bash

#Run threads 1,2,4,8
#Runs sizes 1/4/16/64/256

echo Starting Throughput Benchmark

#--------------------------------------------------------------------------------------------All Threads Size 1--------------------------------------------------------------------------------------------
#Threads 1 Size x/1
echo Running Threads 1 size x/1
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 1"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/1 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-1-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/1 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-1-ipc.png"

#Threads 2 Size x/1
echo Running Threads 2 size x/1
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 2 --program "python throughPutRun.py -s 1"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 2 Size x/1 MPKI" -y "Misses per 1000 Instructions" --output "Thread-2-Size-1-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 2 Size x/1 IPC" -y "Instructions per Cycles" --output "Thread-2-Size-1-ipc.png"

#Threads 4 Size x/1
echo Running Threads 4 size x/1
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 4 --program "python throughPutRun.py -s 1"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 4 Size x/1 MPKI" -y "Misses per 1000 Instructions" --output "Thread-4-Size-1-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 4 Size x/1 IPC" -y "Instructions per Cycles" --output "Thread-4-Size-1-ipc.png"

#Threads 8 Size x/1
echo Running Threads 8 size x/1
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 8 --program "python throughPutRun.py -s 1"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 8 Size x/1 MPKI" -y "Misses per 1000 Instructions" --output "Thread-8-Size-1-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 8 Size x/1 IPC" -y "Instructions per Cycles" --output "Thread-8-Size-1-ipc.png"


#--------------------------------------------------------------------------------------------All Threads Size 4--------------------------------------------------------------------------------------------
#Threads 1 Size x/4
echo Running Threads 1 size x/4
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 4"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/4 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-4-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/4 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-4-ipc.png"

#Threads 2 Size x/4
echo Running Threads 2 size x/4
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 2 --program "python throughPutRun.py -s 4"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 2 Size x/4 MPKI" -y "Misses per 1000 Instructions" --output "Thread-2-Size-4-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 2 Size x/4 IPC" -y "Instructions per Cycles" --output "Thread-2-Size-4-ipc.png"

#Threads 4 Size x/4
echo Running Threads 4 size x/4
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 4 --program "python throughPutRun.py -s 4"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 4 Size x/4 MPKI" -y "Misses per 1000 Instructions" --output "Thread-4-Size-4-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 4 Size x/4 IPC" -y "Instructions per Cycles" --output "Thread-4-Size-4-ipc.png"

#Threads 8 Size x/1
echo Running Threads 8 size x/4
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 8 --program "python throughPutRun.py -s 4"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 8 Size x/4 MPKI" -y "Misses per 1000 Instructions" --output "Thread-8-Size-4-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 8 Size x/4 IPC" -y "Instructions per Cycles" --output "Thread-8-Size-4-ipc.png"


#--------------------------------------------------------------------------------------------All Threads Size 16--------------------------------------------------------------------------------------------
#Threads 1 Size x/16
echo Running Threads 1 size x/16
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 16"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/16 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-16-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/16 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-16-ipc.png"

#Threads 2 Size x/16
echo Running Threads 2 size x/16
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 2 --program "python throughPutRun.py -s 16"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 2 Size x/16 MPKI" -y "Misses per 1000 Instructions" --output "Thread-2-Size-16-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 2 Size x/16 IPC" -y "Instructions per Cycles" --output "Thread-2-Size-16-ipc.png"

#Threads 4 Size x/16
echo Running Threads 4 size x/16
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 4 --program "python throughPutRun.py -s 16"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 4 Size x/16 MPKI" -y "Misses per 1000 Instructions" --output "Thread-4-Size-16-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 4 Size x/16 IPC" -y "Instructions per Cycles" --output "Thread-4-Size-16-ipc.png"

#Threads 8 Size x/16
echo Running Threads 8 size x/16
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 8 --program "python throughPutRun.py -s 16"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 8 Size x/16 MPKI" -y "Misses per 1000 Instructions" --output "Thread-8-Size-16-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 8 Size x/16 IPC" -y "Instructions per Cycles" --output "Thread-8-Size-16-ipc.png"


#--------------------------------------------------------------------------------------------All Threads Size 64--------------------------------------------------------------------------------------------
#Threads 1 Size x/64
echo Running Threads 1 size x/64
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 64"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/64 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-64-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/64 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-64-ipc.png"

#Threads 2 Size x/64
echo Running Threads 2 size x/64
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 2 --program "python throughPutRun.py -s 64"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 2 Size x/64 MPKI" -y "Misses per 1000 Instructions" --output "Thread-2-Size-64-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 2 Size x/64 IPC" -y "Instructions per Cycles" --output "Thread-2-Size-64-ipc.png"

#Threads 4 Size x/64
echo Running Threads 4 size x/64
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 4 --program "python throughPutRun.py -s 64"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 4 Size x/64 MPKI" -y "Misses per 1000 Instructions" --output "Thread-4-Size-64-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 4 Size x/64 IPC" -y "Instructions per Cycles" --output "Thread-4-Size-64-ipc.png"

#Threads 8 Size x/64
echo Running Threads 8 size x/64
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 8 --program "python throughPutRun.py -s "
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 8 Size x/64 MPKI" -y "Misses per 1000 Instructions" --output "Thread-8-Size-64-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 8 Size x/64 IPC" -y "Instructions per Cycles" --output "Thread-8-Size-64-ipc.png"


#--------------------------------------------------------------------------------------------All Threads Size 256--------------------------------------------------------------------------------------------
#Threads 1 Size x/256
echo Running Threads 1 size x/256
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 1 --program "python throughPutRun.py -s 256"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 1 Size x/256 MPKI" -y "Misses per 1000 Instructions" --output "Thread-1-Size-256-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 1 Size x/256 IPC" -y "Instructions per Cycles" --output "Thread-1-Size-256-ipc.png"

#Threads 2 Size x/256
echo Running Threads 2 size x/256
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 2 --program "python throughPutRun.py -s 256"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 2 Size x/256 MPKI" -y "Misses per 1000 Instructions" --output "Thread-2-Size-256-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 2 Size x/256 IPC" -y "Instructions per Cycles" --output "Thread-2-Size-256-ipc.png"

#Threads 4 Size x/256
echo Running Threads 4 size x/256
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 4 --program "python throughPutRun.py -s 256"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 4 Size x/256 MPKI" -y "Misses per 1000 Instructions" --output "Thread-4-Size-256-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 4 Size x/256 IPC" -y "Instructions per Cycles" --output "Thread-4-Size-256-ipc.png"

#Threads 8 Size x/256
echo Running Threads 8 size x/256
sudo perf stat -D 5 -I 100 -e L1-dcache-load-misses,l2_rqsts.miss,branch-misses,branch-instructions,instructions,mem_load_uops_retired.l3_miss,cpu-cycles,LLC-load-misses -x, -o output.csv python runThreads.py -t 8 --program "python throughPutRun.py -s 256"
python interval-normalize.py output.csv --output new.csv
python plot-normalized-mpki.py new.csv --title "Threads 8 Size x/256 MPKI" -y "Misses per 1000 Instructions" --output "Thread-8-Size-256-mpki.png"
python plot-normalized-ipc.py new.csv --title "Threads 8 Size x/256 IPC" -y "Instructions per Cycles" --output "Thread-8-Size-256-ipc.png"



