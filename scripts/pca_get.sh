#!/bin/bash -l

### Build Geno, Maf and SFS files ###

angsd  -bam southibercom.bamlist -out southibercom -GL 1 -doMajorMinor 1 -doMaf 2 -SNP_pval 1e-6 -minMaf 5e-2 -doGeno 32  -doPost 2 -minMapQ 20 -minQ 20 -minInd 71  -doPklink 1 -skipTriallelic 1



### Unzip all files ##

     gunzip *.gz


### Calculate covariance matrix ###
  ngsCovar -probfile *.geno -outfile *.covar -nind 141  -nsites  -call 1 -minmaf 0.05



#nsites = number of lines contained int the .mafs file







