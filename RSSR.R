
library(seqinr)
install.packages("gsubfn")
library(gsubfn)

#read cd247 gene fasta file from My Documents
cd247<-read.fasta("sequence.fasta")
#store DNA sequence for cd247 into cd247seq
cd247seq<-cd247[[1]]
cd247seq[1:50]
#change cd247seq from vector of characters to string
c2s(cd247seq)
#create table of all the 7 character sequences in cd247 gene
count(cd247seq,7)
cd247table<-count(cd247seq,7)
#give number of results for "cactcta"
cd247table[["cactcta"]]

