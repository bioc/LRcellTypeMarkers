\name{LRcellTypeMarkers}
\alias{LRcellTypeMarkers}
\alias{LRcellTypeMarkers-package}

\title{Marker gene information for LRcell.}

\description{
  This is an external ExperimentData package for LRcell. This data
  package contains the gene enrichment scores calculated from scRNA-seq dataset
  which indicates the gene enrichment of each cell type in certain brain region.
  LRcell package is used to identify specific sub-cell types that drives the
  changes observed in a bulk RNA-seq differential gene expression experiment.
  For more details, please visit: https://github.com/marvinquiet/LRcell.
}

\details{
  See the vignette for examples of extracting and using these data.

  browseVignettes("LRcellTypeMarkers")

  Details of how these data were created are in the scripts/ directory
  of the source package.

  The current release includes the following datasets:
  \describe{
    \item{Mouse Whole Brain Marker Genes}{Gene enrichment scores calculated
    from Mouse Adult Whole Brain scRNA-seq dataset. The dataset contains
    15,976 common genes among 9 brain regions. According to original cell
    type annotation, we computed the gene enrichment scores for each brain
    region. The 9 brain regions are: Frontal Cortex (EH4548), Cerebellum (EH4549),
    Entopeduncular (EH4550), Globus Pallidus (EH4551), Posterior Cortex (EH4552),
    Striatum (EH4553), Substantia Nigra (EH4554), Thalamus (EH4555) and
    Hippocampus (EH4556).}

    \item{Human Prefrontal Cortex Marker Genes}{Gene enrichment scores
    calculated from healthy human prefrontal cortex scRNA-seq dataset (EH4557).
    Original paper annotated the cell types based on prior knowledge which
    contains 26 valid sub-cell types (clusters).}
    }
}

\examples{
library(ExperimentHub)
eh <- ExperimentHub()
myfiles <- query(eh, "LRcellTypeMarkers")
\dontrun{
## download resource
myfiles[[1]]  ## load the first resource
myfiles[['EH4548']]  ## load by EH id
}}

\references{
Saunders et al. (2018).
Molecular Diversity and Specializations among the Cells of the Adult Mouse Brain.
\emph{Cell} 174(4), 1015-1030

Nagy et al. (2020)
Single-nucleus transcriptomics of the prefrontal cortex in major depressive
disorder implicates oligodendrocyte precursor cells and excitatory neurons.
\emph{Nature Neuroscience} 1-11
}
