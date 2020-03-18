#!/bin/bash
cd /data/project_data/RS_RNASeq/fastq/cleanreads

infolder=/data/project_data/RS_RNASeq/fastq/cleanreads
outfolder=/data/project_data/RS_RNASeq/salmon/allmapping

for file in CAM*D*

do
echo "starting sample ${file}"

salmon quant \
 -i /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_cds_index \
 -l A \
 -r ${infolder}/${file} \
 --validateMappings \
 -p 1 \
 --seqBias \
 -o ${outfolder}/${file} 

 echo "sample ${file} done"

done
