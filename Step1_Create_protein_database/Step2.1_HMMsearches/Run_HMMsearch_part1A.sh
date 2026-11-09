#!/bin/bash -e
#SBATCH --job-name      BacAmad149
#SBATCH --time          1:00:00
#SBATCH --mem           7GB
#SBATCH --cpus-per-task 20
#SBATCH --error         slurm_output/slurm_BacA2_%A-%a.err
#SBATCH --output        slurm_output/slurm_BacA2_%A-%a.out
#SBATCH --array         0-85%5

declare -a array=($(seq 0 85))

HMMdir=/home/mad149/HMM_databases/individual_hmms
Bac_db=/home/mad149/GTDB232/BacDB/fasta/Bacteria_GTDB232_protein_subset${array[$SLURM_ARRAY_TASK_ID]}.fasta
Bac_TSV=/home/mad149/GTDB232/BacDB/tsv/Bacteria_GTDB232_protein_Apr23_2026_chunk_${array[$SLURM_ARRAY_TASK_ID]}.tsv
HMMsearch=/home/mad149/chapter_meta_analysis/HMMsearch/Bacteria

module load Biopython/1.83-foss-2023a
module load Python/3.11.5-GCCcore-13.2.0
module load HMMER/3.4-gompi-2023a

#---------------------------------------------------------Rpl4--------------------------------------------------------------------------------------------------


#HMMsearch
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF00573_Rpl4hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF00573_Rpl4.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF00573_Rpl4hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF00573_Rpl4hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------ClcA--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF00654_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF00654_ClcA.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF00654_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF00654_ClcAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta



#---------------------------------------------------------Kdp------------------------------------------------------------------------------------------------

#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF03814_kdphmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF03814_kdp.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF03814_kdphmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF03814_kdphmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------OpuAC------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF04069_OpuAChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF04069_OpuAC.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF04069_OpuAChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF04069_OpuAChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------MtrA------------------------------------------------------------------------------------------------



hmmsearch --noali --cpu 10 -E 0.00001  --tblout ${HMMsearch}/PF04208_MtrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF04208_MtrA.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF04208_MtrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF04208_MtrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------EtcC-----------------------------------------------------------------------------------------------



#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF06339_EctChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF06339_EctC.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF06339_EctChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF06339_EctChmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta




#---------------------------------------------------------TreT-----------------------------------------------------------------------------------------------



#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF21269_TreThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF21269_TreT.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF21269_TreThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF21269_TreThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------NqrA----------------------------------------------------------------------------------------------



#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF24836_NqrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF24836_NQRA.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF24836_NqrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF24836_NqrAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------KimA----------------------------------------------------------------------------------------------



#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PTHR47704_KimAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PTHR47704_KimA.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PTHR47704_KimAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PTHR47704_KimAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------TIGR01804.1-Betain-Aldyhde-dehydrogenase----------------------------------------------------------------------------------------------



#HMMsearch
hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/TIGR01804.1_Betain-aldehyde-dehydrogenase.hmm ${Bac_db}



python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#----------------------------------------------------------Rps2-------------------------------------------------------------------------#

#HMMsearch
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF00318_Rps2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF00318_Rps2.hmm ${Bac_db}

python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF00318_Rps2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF00318_Rps2hmmv_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------MIP--------------------------------------------------------------------------------------------------

#
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF00230_MIPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF00230_MIP.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF00230_MIPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF00230hmm_MIPvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------MscS--------------------------------------------------------------------------------------------------

#HMMsearch
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF00924_MscShmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF00924_MscS.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF00924_MscShmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF00924_MscShmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------Na/Alanine symporter--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF01235_Na_Ala_symhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01235_Na_Ala_sym.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01235_Na_Ala_symhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01235_Na_Ala_symhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------CorA--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 10 -E 0.00001 --tblout ${HMMsearch}/PF01544_CorAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01544_CorA.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01544_CorAhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01544_CorA.hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------Na/Ca_exchanger--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001  --tblout ${HMMsearch}/PF01699_Na_Ca_exhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01699_Na_Ca_ex.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01699_Na_Ca_exhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01699_Na_Ca_exhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------MscL--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF01741_MscLhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01741_MscL.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01741_MscLhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01741_MscLhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------MgtE--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF01769_MgtEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01769_MgtE.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01769_MgtEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01769_MgtEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------MnhE--------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001  --tblout ${HMMsearch}/PF01899_MnhEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF01899_MnhE.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF01899_MnhEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF01899_MnhEhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------BCCT-------------------------------------------------------------------------------------------------

#HMMsearch
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF02028_BCCThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF02028_BCCT.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF02028_BCCThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF02028_BCCThmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------OtsB------------------------------------------------------------------------------------------------


#HMMsearch
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF02358_Trehalose_PPasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF02358_Trehalose_PPase.hmm ${Bac_db}

python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF02358_Trehalose_PPasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF02358_Trehalose_PPasehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------TrkH------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF02386_TrkHhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF02386_TrkH.hmm ${Bac_db}

python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF02386_TrkHhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF02386_TrkHhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta



#---------------------------------------------------------Kup------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF02705_KUPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF02705_KUP.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF02705_KUPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF02705_KUPhmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta


#---------------------------------------------------------HPPase------------------------------------------------------------------------------------------------

hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF03030_HPPAsehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv ${HMMdir}/PF03030_HPPAse.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF03030_HPPAsehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF03030_HPPAsehmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03_fl_sequence.fasta

#---------------------------------------------------------BRCA2------------------------------------
hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF13520_BRCAtransporter2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv /home/mad149/HMM_databases/individual_hmms/PF13520_BRCAtranspoter2.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF13520_BRCAtransporter2hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF13520_BRCAtranspoter2hmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta

#--------------------------------------------------------BRCA1--------------------------------------------------


hmmsearch --noali --cpu 20 -E 0.00001 --tblout ${HMMsearch}/PF05525_BRCA1hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv /home/mad149/HMM_databases/individual_hmms/PF05525_BRCAtranspoter1.hmm ${Bac_db}


python getting_fasta_from_hit_extra_Arc.py ${HMMsearch}/PF05525_BRCA1hmmvs_Bac_subset${array[$SLURM_ARRAY_TASK_ID]}_e03.tsv HMM ${Bac_TSV} ${HMMsearch}/PF05525_BRCAtranspoter1hmmvs_vsBacteria_subset${array[$SLURM_ARRAY_TASK_ID]}__e03_fl_sequence.fasta
