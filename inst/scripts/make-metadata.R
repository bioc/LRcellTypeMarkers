###------ brain metadata
## Mouse brain data (FC, CB, ENT, GP, PC, STR, SN, TH, HC)
MOUSE_BRAIN_DATANUM <- 9
MOUSE_BRAIN_DATAURL <- "https://github.com/marvinquiet/LRcell/"
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
    BiocVersion = rep("3.13.0", MOUSE_BRAIN_DATANUM),
    Genome = rep("GRCm38", MOUSE_BRAIN_DATANUM),
    SourceType = rep("RData", MOUSE_BRAIN_DATANUM),
    SourceUrl = rep(MOUSE_BRAIN_DATAURL, MOUSE_BRAIN_DATANUM),
    SourceVersion = rep("1.0.0", MOUSE_BRAIN_DATANUM),
    Species = rep("Mus musculus", MOUSE_BRAIN_DATANUM),
    TaxonomyId = rep(10090, MOUSE_BRAIN_DATANUM),
    Coordinate_1_based = rep(TRUE, MOUSE_BRAIN_DATANUM),
    DataProvider = rep("Emory University", MOUSE_BRAIN_DATANUM),
    Maintainer = rep("Wenjing Ma <wenjing.ma@emory.edu>", MOUSE_BRAIN_DATANUM),
    RDataClass = rep("List", MOUSE_BRAIN_DATANUM),
    DispatchClass = rep("RDS", MOUSE_BRAIN_DATANUM),
    RDataPath = c("LRcellTypeMarkers/marker_genes_lib/mouse/FCenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/CBenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/ENTenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/GPenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/PCenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/STRenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/SNenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/THenriched_genes.RDS",
                  "LRcellTypeMarkers/marker_genes_lib/mouse/HCenriched_genes.RDS"
                  ),
    Tags = c("LRcellMarker_Mouse_FC",
             "LRcellMarker_Mouse_CB",
             "LRcellMarker_Mouse_ENT",
             "LRcellMarker_Mouse_GP",
             "LRcellMarker_Mouse_PC",
             "LRcellMarker_Mouse_STR",
             "LRcellMarker_Mouse_SN",
             "LRcellMarker_Mouse_TH",
             "LRcellMarker_Mouse_HC")
)

## Human brain data (pFC)
HUMAN_BRAIN_DATANUM <- 1
HUMAN_BRIAN_DATAURL <- "https://github.com/marvinquiet/LRcell/"
human_brain_meta <- data.frame(
    Title = c("Human pre-Frontal Cortex Marker Genes"),
    Description = c("Gene enrichment scores calculated from Human pre-Frontal Cortex scRNA-seq data"),
    BiocVersion = rep("3.13.0", HUMAN_BRAIN_DATANUM),
    Genome = rep("GRCh38", HUMAN_BRAIN_DATANUM),
    SourceType = rep("RData", HUMAN_BRAIN_DATANUM),
    SourceUrl = rep(HUMAN_BRIAN_DATAURL, HUMAN_BRAIN_DATANUM),
    SourceVersion = rep("1.0.0", HUMAN_BRAIN_DATANUM),
    Species = rep("Homo sapiens", HUMAN_BRAIN_DATANUM),
    TaxonomyId = rep(9606, HUMAN_BRAIN_DATANUM),
    Coordinate_1_based = rep(TRUE, HUMAN_BRAIN_DATANUM),
    DataProvider = rep("Emory University", HUMAN_BRAIN_DATANUM),
    Maintainer = rep("Wenjing Ma <wenjing.ma@emory.edu>", HUMAN_BRAIN_DATANUM),
    RDataClass = rep("List", HUMAN_BRAIN_DATANUM),
    DispatchClass = rep("RDS", HUMAN_BRAIN_DATANUM),
    RDataPath = c("LRcellTypeMarkers/marker_genes_lib/human/pFCenriched_genes.RDS"),
    Tags = c("LRcellMarker_Human_pFC")
)

meta <- rbind(mouse_brain_meta, human_brain_meta)
write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)

## Test with ExperimentHub
# ExperimentHubData::makeExperimentHubMetadata(getwd(), fileName = "metadata.csv")

