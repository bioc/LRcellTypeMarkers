###------ brain metadata

## Mouse brain data (FC, CB, ENT, GP, PC, STR, SN, TH, HC)
MOUSE_BRAIN_DATANUM <- 9
MOUSE_BRAIN_DATAURL <- "https://github.com/marvinquiet/LRcell/tree/master/marker_genes_lib"
#MOUSE_BRAIN_DATAURL <- NA
mouse_brain_meta <- data.frame(
    Title = c("Mouse Frontal Cortex Marker Genes",
              "Mouse Cerebellum Marker Genes",
              "Mouse Entopeduncular Marker Genes",
              "Mouse Globus Pallidus Marker Genes",
              "Mouse Posterior Cortex Marker Genes",
              "Mouse Striatum Marker Genes",
              "Mouse Substantia Nigra Marker Genes",
              "Mouse Thalamus Marker Genes",
              "Mouse Hippocampus Marker Genes"
              ),
    Description = c("Gene enrichment scores calculated from Mouse Frontal Cortex scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Cerebellum scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Entopeduncular scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Globus Pallidus scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Posterior Cortex scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Striatum scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Substantia Nigra scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Thalamus scRNA-seq data",
                    "Gene enrichment scores calculated from Mouse Hippocampus scRNA-seq data"
                    ),
    BiocVersion = rep("3.12.0", MOUSE_BRAIN_DATANUM),
    Genome = rep("GRCm38", MOUSE_BRAIN_DATANUM),
    SourceType = rep("RData", MOUSE_BRAIN_DATANUM),
    SourceUrl = rep(MOUSE_BRAIN_DATAURL, MOUSE_BRAIN_DATANUM),
    SourceVersion = rep("1.0.0", MOUSE_BRAIN_DATANUM),
    Species = rep("Mus musculus", MOUSE_BRAIN_DATANUM),
    TaxonomyId = rep(10090, MOUSE_BRAIN_DATANUM),
    Coordinate_1_based = rep(TRUE, MOUSE_BRAIN_DATANUM),
    DataProvider = rep("Wenjing Ma", MOUSE_BRAIN_DATANUM),
    Maintainer = rep("Wenjing Ma <wenjing.ma@emory.edu>", MOUSE_BRAIN_DATANUM),
    RDataClass = rep("Named Vector", MOUSE_BRAIN_DATANUM),
    DispatchClass = rep("RDS", MOUSE_BRAIN_DATANUM),
    RDataPath = c("LRcell_extdata/marker_genes_lib/mouse/FCenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/CBenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/ENTenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/GPenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/PCenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/STRenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/SNenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/THenriched_genes.RDS",
                  "LRcell_extdata/marker_genes_lib/mouse/HCenriched_genes.RDS"
                  ),
    Tags = c("LRcell_Mouse_FC",
             "LRcell_Mouse_CB",
             "LRcell_Mouse_ENT",
             "LRcell_Mouse_GP",
             "LRcell_Mouse_PC",
             "LRcell_Mouse_STR",
             "LRcell_Mouse_SN",
             "LRcell_Mouse_TH",
             "LRcell_Mouse_HC")
)

## Human brain data (pFC)
HUMAN_BRAIN_DATANUM <- 1
HUMAN_BRIAN_DATAURL <- "https://github.com/marvinquiet/LRcell/tree/master/marker_genes_lib"
human_brain_meta <- data.frame(
    Title = c("Human pre-Frontal Cortex Marker Genes"),
    Description = c("Gene enrichment scores calculated from Human pre-Frontal Cortex scRNA-seq data"),
    BiocVersion = rep("3.12.0", HUMAN_BRAIN_DATANUM),
    Genome = rep("GRCh38", HUMAN_BRAIN_DATANUM),
    SourceType = rep("RData", HUMAN_BRAIN_DATANUM),
    SourceUrl = rep(HUMAN_BRIAN_DATAURL, HUMAN_BRAIN_DATANUM),
    SourceVersion = rep("1.0.0", HUMAN_BRAIN_DATANUM),
    Species = rep("Homo sapiens", HUMAN_BRAIN_DATANUM),
    TaxonomyId = rep(9606, HUMAN_BRAIN_DATANUM),
    Coordinate_1_based = rep(TRUE, HUMAN_BRAIN_DATANUM),
    DataProvider = rep("Wenjing Ma", HUMAN_BRAIN_DATANUM),
    Maintainer = rep("Wenjing Ma <wenjing.ma@emory.edu>", HUMAN_BRAIN_DATANUM),
    RDataClass = rep("Named Vector", HUMAN_BRAIN_DATANUM),
    DispatchClass = rep("RDS", HUMAN_BRAIN_DATANUM),
    RDataPath = c("LRcell_extdata/marker_genes_lib/human/pFCenriched_genes.RDS"),
    Tags = c("LRcell_Human_pFC")
)

meta <- rbind(mouse_brain_meta, human_brain_meta)
write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)

## Test with AnnotationHubData
#AnnotationHubData::makeAnnotationHubMetadata(getwd(), fileName = "metadata_test.csv")

