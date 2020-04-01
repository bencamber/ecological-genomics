#!/bin/bash

bismark --bowtie2 --multicore 1 \
    --genome /data/project_data/epigenetics/reference_genome \
    --output_dir /data/project_data/epigenetics/aligned_output \
    -1 /data/project_data/epigenetics/trimmed_fastq/AA_F00_4_1.fq.gz \
    -2 /data/project_data/epigenetics/trimmed_fastq/AA_F00_4_2.fq.gz \
    --rg_tag --rg_id AA_F00_4 --rg_sample AA_F00_4 --gzip --local --maxins 1000