#!/bin/bash -e
#SBATCH --job-name      BacB_hmmalign
#SBATCH --time          10:00:00
#SBATCH --mem           5GB
#SBATCH --cpus-per-task 1
#SBATCH --error         slurm_output/BacB_%A-%a.err
#SBATCH --output        slurm_output/BacB_%A-%a.out
#SBATCH --array         0-1
declare -a array=($(seq 0 1))
HMMalign=/home/mad149/chapter_meta_analysis/HMMalign/Bacteria
HMMsearch=/home/mad149/chapter_meta_analysis/HMMsearch/Bacteria
HMMdir=/home/mad149/HMM_databases/individual_hmms

module load HMMER/3.4-gompi-2023a

hmmalign  --amino --trim -o ${HMMalign}/PF00230hmm_MIPvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF00230_MIP.hmm ${HMMsearch}/PF00230hmm_MIPvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF00318_Rps2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF00318_Rps2.hmm ${HMMsearch}/PF00318_Rps2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF00573_Rpl4hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF00573_Rpl4.hmm ${HMMsearch}/PF00573_Rpl4hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta
																					
hmmalign  --amino --trim -o ${HMMalign}/PF00654_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF00654_ClcA.hmm ${HMMsearch}/PF00654_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF00924_MscShmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF00924_MscS.hmm ${HMMsearch}/PF00924_MscShmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01235_Na_Ala_symhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01235_Na_Ala_sym.hmm ${HMMsearch}/PF01235_Na_Ala_symhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01544_CorA.hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01544_CorA.hmm ${HMMsearch}/PPF01544_CorA.hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01699_Na_Ca_exhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01699_Na_Ca_ex.hmm ${HMMsearch}/PF01699_Na_Ca_exhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01741_MscLhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01741_MscL.hmm ${HMMsearch}/PF01741_MscLhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01769_MgtEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01769_MgtE.hmm ${HMMsearch}/PF01769_MgtEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF01899_MnhE_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF01899_MnhE.hmm ${HMMsearch}/PF01899_MnhEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF02028_BCCT_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF02028_BCCT.hmm ${HMMsearch}/PF02028_BCCThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF02358_Trehalose_HPPashemmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF02358_Trehalose_PPase.hmm ${HMMsearch}/PF02358_Trehalose_PPasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF02386_TrkHhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF02386_TrkH.hmm ${HMMsearch}/PF02386_TrkHhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF02705_KUPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF02705_KUP.hmm ${HMMsearch}/PF02705_KUPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF03030_HPPAsehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF03030_HPPAse.hmm ${HMMsearch}/PF03030_HPPAsehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF03814_kdphmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF03814_kdp.hmm ${HMMsearch}/PF03814_kdphmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF04069_OpuAChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF04069_OpuAC.hmm ${HMMsearch}/PF04069_OpuAChmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF04208_MtrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF04208_MtrA.hmm ${HMMsearch}/PF04208_MtrAhmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF06339_EctChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF06339_EctC.hmm ${HMMsearch}/PF06339_EctChmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF21269_TreThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF21269_TreT.hmm ${HMMsearch}/PF21269_TreThmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF24836_NQRAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF24836_NQRA.hmm ${HMMsearch}/PF24836_NqrAhmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PTHR47704_KimAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PTHR47704_KimA.hmm ${HMMsearch}/PTHR47704_KimAhmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/TIGR01804.1_Betain-aldehyde-dehydrogenase.hmm ${HMMsearch}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF13520_BRCAtranspoter2mmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF13520_BRCAtranspoter2.hmm ${HMMsearch}/PF13520_BRCAtranspoter2hmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

hmmalign  --amino --trim -o ${HMMalign}/PF05525_BRCAtranspoter1mmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_hmmaligned.sthk ${HMMdir}/PF05525_BRCAtranspoter1.hmm ${HMMsearch}/PF05525_BRCAtranspoter1hmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta
