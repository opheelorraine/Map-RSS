
library(seqinr)
install.packages("gsubfn")
library(gsubfn)

#read cd247 gene fasta file from My Documents
cd247<-read.fasta("sequence.fasta")
#store DNA sequence for cd247 into cd247seq
cd247seq<-cd247[[1]]

#change cd247seq from vector of characters to string
c2s(cd247seq)

library(Biostrings)
vighmotif<-DNAStringSet(c("cacagct","cacaatg","cacagtg"))

matchPDict(vighmotif, cd247seq)
matchPattern(vighmotif,cd247seq)
vmatchPattern(vighmotif,cd247seq)

