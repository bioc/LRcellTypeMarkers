# --- The gene enrichment algorithm
# We obey the clustering result from the original papers and applied an
# algorithm (Marques et al. 2016) on the processed read count matrix.
# In the end, cell-type specific gene enrichment scores are calculated.
# The algorithm can be found in LRcell package as LRcell_gene_enriched_scores()
# which takes an expression matrix along with cell annotation as input.

# --- The mouse brain data
# 1. Read count matrix from 9 brain region was downloaded from
#    http://dropviz.org/ under Data tab.
# 2. Cell annotation was downloaded from the same URL with subcluster information.
# 3. Only cells with annotation are remained in the read count matrix.
# 4. Common genes (15,976) among all 9 brain regions are remained in the read
#    count matrix.
# 5. Enriched gene scores are then calculated using the processed read count matrix
#    for each brain region.

# --- The human brain data
# 1. Read count matrix was downloaded from GSE144136:
#    https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE144136
# 2. Cell annotation was also downloaded from the same URL. 'Astros_1', 'Mix_1',
#    'Mix_2', 'Mix_3', 'Mix_4', 'Mix_5', 'Inhib_4_SST' were excluded in the
#     analysisaccording to paper.
# 3. Genes expressed in less than 10 cells are filtered; Cells having less
#    than 10 read counts are filtered
# 4. Enriched gene scores are then calculated using the processed read count matrix.
