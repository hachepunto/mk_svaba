<config.mk


results/%.alignments.txt.gz \
results/%.bps.txt.gz \
results/%.contigs.bam \
results/%.discordant.txt.gz \
results/%.log \
results/%.svaba.indel.vcf \
results/%.svaba.sv.vcf \
results/%.svaba.unfiltered.indel.vcf \
results/%.svaba.unfiltered.sv.vcf:	data/%.bam
	mkdir -p `dirname $target`
	svaba run \
		-t $prereq \
		-p $NT \
		-L $MR \
		-I \
		-a "results/"$stem".build" \
		-G $REFERENCE \
	&& mv "results/"$stem".buld.alignments.txt.gz" "results/"$stem".alignments.txt.gz" \
	&& mv "results/"$stem".buld.bps.txt.gz" "results/"$stem".bps.txt.gz" \
	&& mv "results/"$stem".buld.contigs.bam" "results/"$stem".contigs.bam" \
	&& mv "results/"$stem".buld.discordant.txt.gz" "results/"$stem".discordant.txt.gz" \
	&& mv "results/"$stem".buld.log" "results/"$stem".log" \
	&& mv "results/"$stem".buld.svaba.indel.vcf" "results/"$stem".svaba.indel.vcf" \
	&& mv "results/"$stem".buld.svaba.sv.vcf" "results/"$stem".svaba.sv.vcf" \
	&& mv "results/"$stem".buld.svaba.unfiltered.indel.vcf" "results/"$stem".svaba.unfiltered.indel.vcf" \
	&& mv "results/"$stem".buld.svaba.unfiltered.sv.vcf" "results/"$stem".svaba.unfiltered.sv.vcf" \
