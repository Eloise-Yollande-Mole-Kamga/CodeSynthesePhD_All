#!/bin/bash

#========================== OPTIONS ===============================
#SBATCH --job-name=Syn_dataHe

 
#SBATCH --array=0-30
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=50000 #en Mo

#SBATCH --partition=normal
#SBATCH --nodelist=node38

# #SBATCH --exclude=django
##SBATCH --time=1:0:0

#========================== TASKS ================================

ins=(
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
)
#SDTH et TH explose la memory

./exe ${ins[$SLURM_ARRAY_TASK_ID]} 



