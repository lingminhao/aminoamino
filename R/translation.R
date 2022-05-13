#' Convert RNA string to Amino acid string
#'
#' @param rna A character vector with one element
#'
#' @return A character vector
#' @export
#'
#' @examples
#' rna <- "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"
#' translation(rna)

translation <- function(rna){
  rna_split <- substring(rna, seq(1, nchar(rna),3), seq(3, nchar(rna),3))
  for (i in seq(length(rna_split))){
    if (codon_table[rna_split[i],] == "Stop"){
      rna_split <- rna_split[1:i-1]
      break
    }
  }
  amino_string <- paste(sapply(rna_split,function(codon){codon_table[codon,1]}),
                        collapse = "")
  return(amino_string)
}
