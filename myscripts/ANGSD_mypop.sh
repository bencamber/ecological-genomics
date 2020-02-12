myrepo="/users/b/c/bcamber/ecological-genomics"
mkdir ${myrepo}/myresults/ANGSD
output="${myrepo}/myresults/ANGSD"
mypop="MRC"
ls /data/project_data/RS_ExomeSeq/mapping/BWA/${mypop}_*sorted.rm*.bam>${output}${mypoop}_bam.list