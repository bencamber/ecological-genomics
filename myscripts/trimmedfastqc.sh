paii#!/bin/bash

cd ~/ecological-genomics/myresults/

mkdir trimmedfastqc

for file in /data/project_data/RS_ExomeSeq/fastq/edge_fastq/pairedcleanreads

do

fastqc ${file} -o fastqc/

done
