

To create the database we used the following resources:
The aim: *create a database where all the protein headers contain their protein family and taxonomy of set protein*
CPA (kef and CPA (not Kef)) and IT homologs (NhaB, NhaC, and NhaD) are availble on:
    https://doi.org/10.5281/zenodo.23968539

Step 1 make a general proteomedatabase to retrieve homologs from, in our case this was already available or done before but here is the TLDR:
    

  How to make the general proteome databases per taxonomic domain is available under; https://github.com/MAdriaansens/Phylogeny_of_CPA/tree/main/Step1_Database_creation
    Proteomic databases for all three domains:
      Databases used for 22/27 of the protein families:
        Archaea GTDB 2026 April: GTDB r232
        Bacteria GTDB 2026 April: GTDB r232
        Eukarya an inhouse database used before is used. (Eukarya_DB.tsv)
    I also like to create a tsv file where every protein ID has its own taxonomy and sequence. 

    All the databases were split into subsets to allow for parallel processing. 


Step 2 Download all the HMMs you want to include, also include the HMM from all three databases for downstream processing.
    Then perform HMMsearches

    Then after we did the HMMsearches we retrieved the sequences using:
        getting_fasta_from_hit_extra_Arc.py for GTDB entries
        getting_fasta_from_hit_extra_Euk.py for Eukarya
                


Step 3 Quality control
We perform quality control by doing a HMMalign against the HMMs of each protein family. When the retrieved sequence aligns for more than 70% of the HMM length then i will pass it to the second round.
After the second round we perform HMMscan. 

Step 4 Use Diamond to make it into a single .dmd database
  
    cat HMMalign/Adriaansens/*a Protein/filtered/*a > Protein/salinity_resistance_database.fasta
    
    module load DIAMOND/2.2.4-GCC-14.3.0
    
    diamond makedb --in Protein/salinity_resistance_database.fasta -d Protein/salinity_resistance_database.dmnd
    
    
