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
  rna <- ""
  for (chr in strsplit(dna,"")[[1]]){
    if (chr == "T"){
      rna <- paste0(rna, "U")
    }
    else{
      rna <- paste0(rna, chr)
    }
  }
  return(rna)
}
