#' Convert DNA string to RNA string
#'
#' @param dna A character vector with one element
#'
#' @return A character vector
#' @export
#'
#' @examples
#' dna <- "GATGGAACTTGACTACGTAAATT"
#' transcription(dna)
transcription <- function(dna){
  nucleotide_change <- function(base){
    if (base == "T"){
      return("U")
    }
    else{
      return(base)
    }
  }
  rna <- paste(lapply(strsplit(dna,"")[[1]], nucleotide_change), collapse = "")
  return(rna)
}
