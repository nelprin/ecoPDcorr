\name{genera}
\docType{methods}
\alias{genera}
\alias{genera-methods}
\alias{genera,phylo4-method}
\alias{genera,phylo4com-method}
\title{Extract genus names}
\description{
  Helper function to extract the genus names from phylogeny tip labels
  in the case when those labels are scientific names using binomial
  nomenclature.
}
\usage{
  \S4method{genera}{phylo4}(x)
  \S4method{genera}{phylo4com}(x, community)
}
\arguments{
  \item{x}{a \code{phylo4com} object}
  \item{community}{a vector of community labels; if missing, all communities}
}
\details{
  This is a simple function that assumes the tip labels of phylogeny
  \code{phy} are of the form \dQuote{genus_species}. It does no checking
  whatsoever to check whether this is in fact the case.
}
\value{
  For \code{phylo4}, a character vector containing the genus portion of
  the tip labels, with element names corresponding to the numeric tip
  node ID. For \code{phylo4com}, a list of such vectors, one per
  community.
}
\author{Jim Regetz (regetz@nceas.ucsb.edu)}
\examples{
  data(weeds)
  genera(weeds)
  genera(weeds, "A")
  genera(phylo4(weeds))
}
