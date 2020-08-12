#' function to automatically retrieve sequences from a databank based on
#'   accession numbers
#'
#' this is a function to retrieve sequences of DNA, RNA or protein from
#'   databases structured under ACNUC and located on the web, the retrieval is
#'   limited to accession numbers as selection criteria, remote access to ACNUC
#'   databases works by opening a socket connection on a port (for example on port
#'   number 5558 at pbil.univ-lyon1.fr) and by communicating on this socket
#'   following the protocol described \href{http://doua.prabi.fr/databases/acnuc/remote_acnuc.html}{here}
#'
#'
#' @param seqnames list of accession numbers as character strings of the
#'   sequences to be retrieved
#' @param acnucdb character string with the name of the ACNUC database to be
#'   searched. Use \code{\link[seqinr]{choosebank}} without arguments to see a
#'   list of available databases
#'
#' @return this function returns a named list with the sequences matching the
#'   sequence names of class SeqAcnucWeb retrieved by
#'   \code{\link[seqinr]{query}} based on the provided accession numbers the
#'   name of each list item is composed of the accession number and the length
#'   of the sequence
#'
#' @examples
#' seqs <- retrieve_seqs(c('P06747', 'P0C569', 'O56773', 'Q5VKP1'), 'swissprot')
#' \dontrun{viruses_annot <- read.csv(system.file('extdata', 'CoV_genomes_annot.csv', package='firstPackage'))}
#' \dontrun{accessions <- viruses_annot$accession}
#' \dontrun{seqs <- retrieve_seqs(accessions, 'genbank')}
#' \dontrun{str(seqs)}
#'
#' @importFrom seqinr choosebank query getSequence
#'
#' @export
retrieve_seqs <- function(seqnames, acnucdb){
                          myseqs <- list()
                          require('seqinr')
                          choosebank(acnucdb)
                          for(i in 1:length(seqnames)){
                              seqname <- seqnames[i]
                              print(paste('retrieving sequence', seqname, '...'))
                              query <- paste('AC=', seqname, sep='')
                              query2 <- query('query2', `query`)
                              seq <- getSequence(query2$req[[1]])
                              myseqs[[i]] <- seq
                              name <- paste(seqname, 'length', length(seq), sep=' ')
                              names(myseqs)[[i]] <- name
                              }
                          closebank()
                          return(myseqs)
                          }
