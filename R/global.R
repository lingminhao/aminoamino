readfile <- read.csv(system.file("extdata", "codon_table.txt",
                                 package = "aminoamino", mustWork = TRUE),
                     header = FALSE,sep = " ")
codon_table <- data.frame(readfile[,2])
colnames(codon_table) <- "amino"
rownames(codon_table) <- readfile[,1]

utils::globalVariables("codon_table")
