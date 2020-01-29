#!/bin/bash

cd ~/ecological-genomics/myresults/

mkdir fastqc

for file in /data/project_data/RS_ExomeSeq/fastq/edge_fastq/MRC*fastq.gz

do

fastqc ${file} -o fastqc/

done
