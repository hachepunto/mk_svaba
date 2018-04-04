# Number of threds
NT=8

## Minimum number of somatic reads required to attempt mate-region lookup
##  Set to 6 which means that 6 or more mate reads must be clustered to 
##   trigger a mate lookup. This also reduces spurious lookups as above, and is more 
##   appropriate the expected ALT counts found in a germline sample 
##   (as opposed to impure, subclonal events in cancer that may have few discordant reads).
MR=6

REFERENCE=/remote/reference/ftp.broadinstitute.org/bundle/hg38/Homo_sapiens_assembly38.fasta

