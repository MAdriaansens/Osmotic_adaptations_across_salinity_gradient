#!/bin/bash -e
#SBATCH --job-name      Bacscan
#SBATCH --time          48:00:00
#SBATCH --mem           3GB
#SBATCH --cpus-per-task 10
#SBATCH --error         slurm_output/Bacscan_%A-%a.err
#SBATCH --output        slurm_output/Bacscan_%A-%a.out
#SBATCH --array         0-7%20

module load HMMER/3.4-gompi-2023a

declare -a array=($(seq 0 7))

HMMDB=/home/mad149/HMM_databases/press_db 
HMMalign=/home/mad149/chapter_meta_analysis/HMMalign/Bacteria
HMMscan=/home/mad149/chapter_meta_analysis/HMMscan/Bacteria


for file in ${HMMalign}/PF*subset${array[$SLURM_ARRAY_TASK_ID]}*.fasta; do
    base=$(basename "$file" .fasta)
    echo "$file"
    hmmscan -E 0.001 --cpu 10 \
        --tblout ${HMMscan}/${base}_HMMscanned.tsv \
        ${HMMDB}/Pfam-A.hmm "$file"
done

for file in ${HMMalign}/TIGR*subset${array[$SLURM_ARRAY_TASK_ID]}*.fasta; do
    base=$(basename "$file" .fasta)
    echo "$file"
    hmmscan -E 0.001 --cpu 10 \
        --tblout ${HMMscan}/${base}_HMMscanned.tsv \
        ${HMMDB}/TIGR_23JAN2026_DB.hmm "$file"
done


for file in ${HMMalign}/PTHR*subset${array[$SLURM_ARRAY_TASK_ID]}*.fasta; do
    base=$(basename "$file" .fasta)
    echo "$file"
    hmmscan -E 0.001 --cpu 10 \
        --tblout ${HMMscan}/${base}_HMMscanned.tsv \
        ${HMMDB}/binHmm "$file"
done
