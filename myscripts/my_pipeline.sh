#!/bin/bash
# Wrapper to run our different stuff
myrepo="/c/Users/PC/desktop/Projects/ecological-genomics"
mypop="MRC"

#Directory to pairedcleanreads

input="/data/project_data/RS_ExomeSeq/fastq/edge_fastq/pairedcleanreads/${mypop}"

#Director to store outputs
output="/data/project_data/RS_ExomeSeq/mapping"

# Run mapping.sh
source ./mapping.sh

# run the post-processing steps
source ./process_bam.sh
