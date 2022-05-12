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
  amino <- ""
  for(i in seq(1, nchar(rna), by = 3)){
    if (codon_table[substr(rna,i,i+2),] == "Stop"){
      break
    }
    else{
      amino <- paste0(amino,codon_table[substr(rna,i,i+2),])
    }
  }
  return(amino)
}
