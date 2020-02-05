#!/bin/bash
# this script will run read mapping using "bwa" program

ref="/data/project_data/RS_ExomeSeq/ReferenceGenomes/Pabies1.0-genome_reduced.fa"

for forward in ${input}*_R1.cl.pd.fq

do 
reverse=${forward/_R1.cl.pd.fq/_R2.cl.pd.fq}
f=${forward/_R1.cl.pd.fq/} 
name=`basename ${f}`
bwa mem -t 1 -M ${ref} ${forward} ${reverse} >${output}/BWA/${name}.sam
done

