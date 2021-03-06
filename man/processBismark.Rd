% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processBismark.R
\name{processBismark}
\alias{processBismark}
\title{processBismark}
\usage{
processBismark(
  files = list.files(path = getwd(), pattern = "*.txt.gz"),
  meta = openxlsx::read.xlsx("sample_info.xlsx", colNames = TRUE) \%>\%
    dplyr::mutate_if(is.character, as.factor),
  testCovar = testCovariate,
  adjustCovar = NULL,
  matchCovar = NULL,
  Cov = coverage,
  mc.cores = cores,
  per.Group = perGroup
)
}
\arguments{
\item{files}{List of cytosine report file paths}

\item{meta}{Design matrix table with sample name in the Name column}

\item{testCovar}{Factor of interest (testCovariate)}

\item{adjustCovar}{Variables to adjust for (adjustCovariate)}

\item{matchCovar}{Variable to block for when constructing permutations (matchCovariate)}

\item{Cov}{CpG coverage cutoff (1x recommended)}

\item{mc.cores}{Number of cores to use}

\item{per.Group}{Percent of samples per a group to apply the CpG coverage cutoff to}
}
\description{
Process bismark cytosine reports into bsseq objects with design matrix pData
}
