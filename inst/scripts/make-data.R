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
# 4. The filtered read count matrix of each brain region is scaled by size factor
#   and log-transformed.
# 5. Enriched gene scores are calculated.

# --- The human brain data
# 1. Read count matrix was downloaded from GSE144136:
#    https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE144136
# 2. Cell annotation was also downloaded from the same URL. 'Astros_1', 'Mix_1',
#    'Mix_2', 'Mix_3', 'Mix_4', 'Mix_5', 'Inhib_4_SST' were excluded in the
#     analysisaccording to paper.
# 3. Genes expressed in less than 10 cells are filtered; Cells having less
#    than 10 read counts are filtered.
# 4. The filtered read count matrix are scaled by size factor and log-transformed.
# 5. Enriched gene scores are calculated.

# --- The human PBMC data
# 1. Seurat object was downloaded from Seurat 4.0 website:
#   https://atlas.fredhutch.org/data/nygc/multimodal/pbmc_multimodal.h5seurat
# 2. Cell annotation was directly fetched from the metadata of Seurat object.
# 3. Cells from timepoint 0 are extracted out which results in 53,364 cells.
#   Furthermore, doublets are removed remaining 53,144 cells. Mitochondria genes
#   and Ribosomal genes are filtered out first and genes expressed in less than
#   1,000 cells are removed.
# 4. The filtered read count matrix are scaled by size factor and log-transformed.
# 5. Enriched gene scores are calculated.

# --- The MSigDB data
# 1. MSigDB marker genes were downloaded from MSigDB C8:
#    https://www.gsea-msigdb.org/gsea/msigdb/genesets.jsp?collection=C8
# 2. We select marker genes with following criterias
#    (1) non-fetal tissues;
#    (2) have more than 8 (sub-) cell types;
#    (3) have minimum number of marker genes greater than 50;
#    (4) have median number of marker genes greater than 80.
# 3. In the end, four tissue types remained: midbrain, cord blood, ovary and skeletal muscle
# 4. Note: since MSigDB markers are only gene symbols, the markers can only be
#    used under Logistic Regression (LR) mode

