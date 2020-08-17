#' alignment of RNA sequences for the spike protein of some sarbecoviruses
#' closely related to SARSCoV2
#'
#' 14 different sequences of some sarbecoviruses closely related to SARSCoV2
#' were retrieve from public databases and compared using CLUSTAL omega (1.2.4)
#' alignment software (see examples section for the complete protocol for
#' retrieving, saving and processing the data)
#'
#' @source the \href{https://www.ncbi.nlm.nih.gov/genbank/}{genbank} database of
#'   the National Center for Biotechnology Information or the Universal Protein
#'   Resource \href{https://www.uniprot.org/}{UniProt} database
#'
#' @format a list with 4 elements \describe{ \item{nb}{number of sequences
#'   compared} \item{nam}{sequence name (accession number)} \item{seq}{a list of
#'   RNA sequences} \item{com}{NA} }
#'
#' @examples
#' \dontrun{spikeRNA_annot <- read.csv(system.file('extdata',
#'                                                'spike_annot.csv',
#'                                                package='firstPackage'))}
#' \dontrun{accessions <- spikeRNA_annot$accession}
#' \dontrun{download manually each sequence from 'genbank' and save as spike.fasta}
#' \dontrun{perform an alignment with clustal omega with following commands
#'   (it needs to be installed locally or use a web interface)}
#' \dontrun{clustalo --threads=4 -v --outfmt=clustal -t RNA -i
#'          ./data/sequences/spike.fasta -o ./data/sequences/spike_align.aln}
#' \dontrun{clustalRNA_load <- load_alignment(system.file('extdata',
#'                                                        spike_align.aln',
#'                                                        package='firstPackage'),
#'                                            clustal')')}
#'
'clustalRNA'

#' Production and farm value of maple products in Canada
#'
#' @source Statistics Canada. Table 001-0008 - Production and farm value of
#' maple products, annual. \url{http://www5.statcan.gc.ca/cansim/}
#' @format A data frame with columns:
#' \describe{
#' \item{Year}{A value between 1924 and 2015.}
#' \item{Syrup}{Maple products expressed as syrup, total in thousands of gallons.}
#' \item{CAD}{Gross value of maple products in thousands of Canadian dollars.}
#' \item{Region}{Postal code abbreviation for territory or province.}
#' }
#'  [1] "QHD43416.1"     "AAP30030.1"     "QHR63300.2"     "AGZ48831.1"     "YP_001039971.1" "ALK02457.1"     "AVP78031.1"     "AVP78042.1"     "AAY88866.1"     "AGZ48818.1"
#'  [11] "AAS00003.1"     "AAP51227.1"     "AAU04646.1"     "YP_003858584.1"
#' @examples
#' \dontrun{
#' maple
#' }
'fastaRNA'

#' Production and farm value of maple products in Canada
#'
#' @source Statistics Canada. Table 001-0008 - Production and farm value of
#' maple products, annual. \url{http://www5.statcan.gc.ca/cansim/}
#' @format A data frame with columns:
#' \describe{
#' \item{Year}{A value between 1924 and 2015.}
#' \item{Syrup}{Maple products expressed as syrup, total in thousands of gallons.}
#' \item{CAD}{Gross value of maple products in thousands of Canadian dollars.}
#' \item{Region}{Postal code abbreviation for territory or province.}
#' }
#' [1] "nb"  "nam" "seq" "com"
#' @examples
#' \dontrun{
#' maple
#' }
'maseProtein'

#' Production and farm value of maple products in Canada
#'
#' @source Statistics Canada. Table 001-0008 - Production and farm value of
#' maple products, annual. \url{http://www5.statcan.gc.ca/cansim/}
#' @format A data frame with columns:
#' \describe{
#' \item{Year}{A value between 1924 and 2015.}
#' \item{Syrup}{Maple products expressed as syrup, total in thousands of gallons.}
#' \item{CAD}{Gross value of maple products in thousands of Canadian dollars.}
#' \item{Region}{Postal code abbreviation for territory or province.}
#' }
#'  [1] "QHD43415_1"     "AAP30028_1"     "QHR63299_1"     "AGZ48830_1"     "YP_001039970_1" "ALK02468_1"     "AVP78030_1"     "AVP78041_1"     "AAY88865_2"     "AGZ48817_1"
#'  [11] "AAS00002_1"     "AAP51225_1"     "AAU04645_1"     "YP_003858583_1"
#' @examples
#' \dontrun{
#' maple
#' }
'msfRNA'

#' Production and farm value of maple products in Canada
#'
#' @source Statistics Canada. Table 001-0008 - Production and farm value of
#' maple products, annual. \url{http://www5.statcan.gc.ca/cansim/}
#' @format A data frame with columns:
#' \describe{
#' \item{Year}{A value between 1924 and 2015.}
#' \item{Syrup}{Maple products expressed as syrup, total in thousands of gallons.}
#' \item{CAD}{Gross value of maple products in thousands of Canadian dollars.}
#' \item{Region}{Postal code abbreviation for territory or province.}
#' }
#' [1] "nb"  "nam" "seq" "com"
#' @examples
#' \dontrun{
#' maple
#' }
'phylipProt'

#' Production and farm value of maple products in Canada
#'
#' @source Statistics Canada. Table 001-0008 - Production and farm value of
#' maple products, annual. \url{http://www5.statcan.gc.ca/cansim/}
#' @format A data frame with columns:
#' \describe{
#' \item{Year}{A value between 1924 and 2015.}
#' \item{Syrup}{Maple products expressed as syrup, total in thousands of gallons.}
#' \item{CAD}{Gross value of maple products in thousands of Canadian dollars.}
#' \item{Region}{Postal code abbreviation for territory or province.}
#' }
#'  [1] "QHD43416.1" "AAP30030.1" "QHR63300.2" "AGZ48831.1" "YP_0010399" "ALK02457.1" "AVP78031.1" "AVP78042.1" "AAY88866.1" "AGZ48818.1" "AAS00003.1" "AAP51227.1" "AAU04646.1"
#'  [14] "YP_0038585"
#' @examples
#' \dontrun{
#' maple
#' }
'phylipRNA'
