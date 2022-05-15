codon_table <- read.csv(system.file("extdata", "codon_table.txt",
                                 package = "aminoamino", mustWork = TRUE),
                     header = FALSE,sep = " ", row.names = 1, col.names = c('codon', 'amino'))

utils::globalVariables("codon_table")
