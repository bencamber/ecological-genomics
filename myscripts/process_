#!/bin/bash

# This is where our output .sam files can get converted to binary format (.bam)
# Then we sort the .bam files, remove the PCR duplicates, and index them

# First let's convert .sam to .bam

for f in ${output}/BWA/${mypop}*.sam

do 
out=${f/.sam/}
sambamba-0.7.1-linux-static view -S --format=bam ${f} -o ${out}.bam
samtools sort ${out}.bam -o ${out}.sorted.bam

done

# now let's remove the PCR duplicates with markdup function in sambamba
for file in ${output}/BWA/${mypop}*.sorted.bam
do
	f=${file/.sorted.bam/}
	sambamba-0.7.1-linux-static markdup -r -t 1 ${file} ${f}.sorted.rmdup.bam
done

# to finish, index files
for file in ${output}/BWA/${mypop}*.sorted.rmdup.bam
do
	samtools index ${file}
done
