module load jje/kent/2014.02.19
infile=./dmel-all-chromosome-r6.12.fasta

outname=./dmelall_counted_min100000
faFilter -minSize=100000 $infile /dev/stdout \
| tee $outname.fa \
| faSize -detailed /dev/stdin \
| sort -rnk 2,2 \
> $outname.sizes

faSize dmelall_counted_min100000.fa