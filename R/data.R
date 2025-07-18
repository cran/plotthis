#' A list of palettes for use in data visualization
#'
#' @concept data
#' @examples
#' \dontrun{
#' if (interactive()) {
#'   library(stringr)
#'   library(RColorBrewer)
#'   library(Redmonder)
#'   library(rcartocolor)
#'   library(nord)
#'   library(viridis)
#'   library(pals)
#'   library(dichromat)
#'   library(jcolors)
#'   library(scales)
#'   syspals <- utils::getFromNamespace("syspals", "pals")
#'   brewer.pal.info <- RColorBrewer::brewer.pal.info
#'   ggsci_db <- utils::getFromNamespace("ggsci_db", "ggsci")
#'   redmonder.pal.info <- Redmonder::redmonder.pal.info
#'   metacartocolors <- rcartocolor::metacartocolors
#'   rownames(metacartocolors) <- metacartocolors$Name
#'   nord_palettes <- nord::nord_palettes
#'   viridis_names <- c("magma", "inferno", "plasma", "viridis", "cividis", "rocket",
#'      "mako", "turbo")
#'   viridis_palettes <- lapply(setNames(viridis_names, viridis_names),
#'      function(x) viridis::viridis(100, option = x))
#'   ocean_names <- names(syspals)[grep("ocean", names(syspals))]
#'   ocean_palettes <- syspals[ocean_names]
#'   dichromat_palettes <- dichromat::colorschemes
#'   jcolors_names <- paste0("jcolors-", c("default", "pal2", "pal3", "pal4", "pal5",
#'      "pal6", "pal7", "pal8", "pal9", "pal10", "pal11", "pal12", "rainbow"))
#'   custom_names <- c("jet", "simspec", "GdRd")
#'   custom_palettes <- list(
#'     oompaBase::jetColors(N = 100),
#'     c("#c22b86", "#f769a1", "#fcc5c1", "#253777", "#1d92c0", "#9ec9e1", "#015b33",
#'         "#42aa5e", "#d9f0a2", "#E66F00", "#f18c28", "#FFBB61"),
#'     c("gold", "red3")
#'   )
#'   names(custom_palettes) <- custom_names
#'   seurat_discrete_palettes <- list(
#'      alphabet = c(
#'        "#F0A0FF", "#0075DC", "#993F00", "#4C005C", "#191919", "#005C31",
#'        "#2BCE48", "#FFCC99", "#808080", "#94FFB5", "#8F7C00", "#9DCC00",
#'        "#C20088", "#003380", "#FFA405", "#FFA8BB", "#426600", "#FF0010",
#'        "#5EF1F2", "#00998F", "#E0FF66", "#740AFF", "#990000", "#FFFF80",
#'        "#FFE100", "#FF5005"
#'      ),
#'      alphabet2 = c(
#'        "#AA0DFE", "#3283FE", "#85660D", "#782AB6", "#565656", "#1C8356",
#'        "#16FF32", "#F7E1A0", "#E2E2E2", "#1CBE4F", "#C4451C", "#DEA0FD",
#'        "#FE00FA", "#325A9B", "#FEAF16", "#F8A19F", "#90AD1C", "#F6222E",
#'        "#1CFFCE", "#2ED9FF", "#B10DA1", "#C075A6", "#FC1CBF", "#B00068",
#'        "#FBE426", "#FA0087"
#'      ),
#'      glasbey = c(
#'        "#0000FF", "#FF0000", "#00FF00", "#000033", "#FF00B6", "#005300",
#'        "#FFD300", "#009FFF", "#9A4D42", "#00FFBE", "#783FC1", "#1F9698",
#'        "#FFACFD", "#B1CC71", "#F1085C", "#FE8F42", "#DD00FF", "#201A01",
#'        "#720055", "#766C95", "#02AD24", "#C8FF00", "#886C00", "#FFB79F",
#'        "#858567", "#A10300", "#14F9FF", "#00479E", "#DC5E93", "#93D4FF",
#'        "#004CFF", "#F2F318"
#'      ),
#'      polychrome = c(
#'        "#5A5156", "#E4E1E3", "#F6222E", "#FE00FA", "#16FF32", "#3283FE",
#'        "#FEAF16", "#B00068", "#1CFFCE", "#90AD1C", "#2ED9FF", "#DEA0FD",
#'        "#AA0DFE", "#F8A19F", "#325A9B", "#C4451C", "#1C8356", "#85660D",
#'        "#B10DA1", "#FBE426", "#1CBE4F", "#FA0087", "#FC1CBF", "#F7E1A0",
#'        "#C075A6", "#782AB6", "#AAF400", "#BDCDFF", "#822E1C", "#B5EFB5",
#'        "#7ED7D1", "#1C7F93", "#D85FF7", "#683B79", "#66B0FF", "#3B00FB"
#'      ),
#'      stepped = c(
#'        "#990F26", "#B33E52", "#CC7A88", "#E6B8BF", "#99600F", "#B3823E",
#'        "#CCAA7A", "#E6D2B8", "#54990F", "#78B33E", "#A3CC7A", "#CFE6B8",
#'        "#0F8299", "#3E9FB3", "#7ABECC", "#B8DEE6", "#3D0F99", "#653EB3",
#'        "#967ACC", "#C7B8E6", "#333333", "#666666", "#999999", "#CCCCCC"
#'      ),
#'      parade = c(
#'        '#ff6969', '#9b37ff', '#cd3737', '#69cdff', '#ffff69', '#69cdcd',
#'        '#9b379b', '#3737cd', '#ffff9b', '#cdff69', '#ff9b37', '#37ffff',
#'        '#9b69ff', '#37cd69', '#ff3769', '#ff3737', '#37ff9b', '#cdcd37',
#'        '#3769cd', '#37cdff', '#9b3737', '#ff699b', '#9b9bff', '#cd9b37',
#'        '#69ff37', '#cd3769', '#cd69cd', '#cd6937', '#3737ff', '#cdcd69',
#'        '#ff9b69', '#cd37cd', '#9bff37', '#cd379b', '#cd6969', '#69ff9b',
#'        '#ff379b', '#9bff9b', '#6937ff', '#69cd37', '#cdff37', '#9bff69',
#'        '#9b37cd', '#ff37ff', '#ff37cd', '#ffff37', '#37cd9b', '#379bff',
#'        '#ffcd37', '#379b37', '#ff9bff', '#379b9b', '#69ffcd', '#379bcd',
#'        '#ff69ff', '#ff9b9b', '#37ff69', '#ff6937', '#6969ff', '#699bff',
#'        '#ffcd69', '#69ffff', '#37ff37', '#6937cd', '#37cd37', '#3769ff',
#'        '#cd69ff', '#6969cd', '#9bcd37', '#69ff69', '#37cdcd', '#cd37ff',
#'        '#37379b', '#37ffcd', '#69cd69'
#'      )
#'   )
#'   seurat_continuous_palettes <- list(
#'     seurat.16 = hue_pal()(16),
#'     seurat.32 = hue_pal()(32),
#'     seurat.64 = hue_pal()(64)
#'   )
#'
#'   palette_list <- list()
#'   all_colors <- c(
#'     rownames(brewer.pal.info), names(ggsci_db), rownames(redmonder.pal.info),
#'     rownames(metacartocolors), names(nord_palettes), names(viridis_palettes),
#'     ocean_names, names(dichromat_palettes), jcolors_names, names(seurat_palettes),
#'     names(seurat_continuous_palettes), custom_names
#'   )
#'   for (pal in all_colors) {
#'     if (!pal %in% all_colors) {
#'       stop(paste0("Invalid pal Must be one of ", paste0(all_colors, collapse = ",")))
#'     }
#'     if (pal %in% rownames(brewer.pal.info)) {
#'       pal_n <- brewer.pal.info[pal, "maxcolors"]
#'       pal_category <- brewer.pal.info[pal, "category"]
#'       if (pal_category == "div") {
#'         palcolor <- rev(brewer.pal(name = pal, n = pal_n))
#'       } else {
#'         if (pal == "Paired") {
#'           palcolor <- brewer.pal(12, "Paired")[c(1:4, 7, 8, 5, 6, 9, 10, 11, 12)]
#'         } else {
#'           palcolor <- brewer.pal(name = pal, n = pal_n)
#'         }
#'       }
#'       if (pal_category == "qual") {
#'         attr(palcolor, "type") <- "discrete"
#'       } else {
#'         attr(palcolor, "type") <- "continuous"
#'       }
#'     } else if (pal %in% names(ggsci_db)) {
#'       if (pal %in% c("d3", "uchicago", "material")) {
#'         for (subpal in names(ggsci_db[[pal]])) {
#'           palcolor <- ggsci_db[[pal]][[subpal]]
#'           if (pal == "material") {
#'             attr(palcolor, "type") <- "continuous"
#'           } else {
#'             attr(palcolor, "type") <- "discrete"
#'           }
#'           palette_list[[paste0(pal, "-", subpal)]] <- palcolor
#'         }
#'         next
#'       } else {
#'         palcolor <- ggsci_db[[pal]][[1]]
#'         if (pal == "gsea") {
#'           attr(palcolor, "type") <- "continuous"
#'         } else {
#'           attr(palcolor, "type") <- "discrete"
#'         }
#'       }
#'     } else if (pal %in% rownames(redmonder.pal.info)) {
#'       pal_n <- redmonder.pal.info[pal, "maxcolors"]
#'       pal_category <- redmonder.pal.info[pal, "category"]
#'       if (pal_category == "div") {
#'         palcolor <- rev(redmonder.pal(name = pal, n = pal_n))
#'       } else {
#'         palcolor <- redmonder.pal(name = pal, n = pal_n)
#'       }
#'       if (pal_category == "qual") {
#'         attr(palcolor, "type") <- "discrete"
#'       } else {
#'         attr(palcolor, "type") <- "continuous"
#'       }
#'     } else if (pal %in% rownames(metacartocolors)) {
#'       pal_n <- metacartocolors[pal, "Max_n"]
#'       palcolor <- carto_pal(name = pal, n = pal_n)
#'       if (pal_category == "qualitative") {
#'         attr(palcolor, "type") <- "discrete"
#'       } else {
#'         attr(palcolor, "type") <- "continuous"
#'       }
#'     } else if (pal %in% names(nord_palettes)) {
#'       palcolor <- nord_palettes[[pal]]
#'       attr(palcolor, "type") <- "discrete"
#'     } else if (pal %in% names(viridis_palettes)) {
#'       palcolor <- viridis_palettes[[pal]]
#'       attr(palcolor, "type") <- "continuous"
#'     } else if (pal %in% names(ocean_palettes)) {
#'       palcolor <- ocean_palettes[[pal]]
#'       attr(palcolor, "type") <- "continuous"
#'     } else if (pal %in% names(dichromat_palettes)) {
#'       palcolor <- dichromat_palettes[[pal]]
#'       if (pal %in% c("Categorical.12", "SteppedSequential.5")) {
#'         attr(palcolor, "type") <- "discrete"
#'       } else {
#'         attr(palcolor, "type") <- "continuous"
#'       }
#'     } else if (pal %in% jcolors_names) {
#'       palcolor <- jcolors(palette = gsub("jcolors-", "", pal))
#'       if (pal %in% paste0("jcolors-", c("pal10", "pal11", "pal12", "rainbow"))) {
#'         attr(palcolor, "type") <- "continuous"
#'       } else {
#'         attr(palcolor, "type") <- "discrete"
#'       }
#'     } else if (pal %in% custom_names) {
#'       palcolor <- custom_palettes[[pal]]
#'       if (pal %in% c("jet")) {
#'         attr(palcolor, "type") <- "continuous"
#'       } else {
#'         attr(palcolor, "type") <- "discrete"
#'       }
#'     } else if (pal %in% names(seurat_discrete_palettes)) {
#'       palcolor <- seurat_discrete_palettes[[pal]]
#'       attr(palcolor, "type") <- "discrete"
#'     } else if (pal %in% names(seurat_continuous_palettes)) {
#'       palcolor <- seurat_continuous_palettes[[pal]]
#'       attr(palcolor, "type") <- "continuous"
#'     }
#'     palette_list[[pal]] <- palcolor
#'   }
#' }
#' }
#' @name palette_list
NULL

#' Excluded words in keyword enrichment analysis and extraction
#'
#' The variable "words_excluded" represents the words that are excluded during keyword enrichment analysis or keyword extraction process. These mainly include words that are excessively redundant or of little value.
#' @concept data
#' @examples
#' \dontrun{
#' if (interactive()) {
#'   words_excluded <- c(
#'     "the", "is", "and", "or", "a", "in", "on", "under", "between", "of", "through",
#'     "via", "along", "that", "for", "with", "within", "without", "cell", "cellular",
#'     "dna", "rna", "protein", "peptide", "amino", "acid", "development", "involved",
#'     "organization", "system", "regulation", "regulated", "positive", "negative",
#'     "response", "process", "processing", "small", "large", "change", "disease"
#'   )
#' }
#' }
#' @name words_excluded
NULL

#' An example of clusterProfiler enrichment result
#' @concept data
#' @examples
#' \dontrun{
#' if (interactive()) {
#'   data(geneList, package="DOSE")
#'   de <- names(geneList)[abs(geneList) > 1.5]
#'   enrich_example <- clusterProfiler::enrichPathway(gene=de, pvalueCutoff = 0.05, readable=TRUE)
#'   enrich_example <- as.data.frame(enrich_example)
#' }
#' }
#' @name enrich_example
NULL

#' An example of clusterProfiler enrichment result with multiple databases
#' @concept data
#' @examples
#' \dontrun{
#' if (interactive()) {
#'   data(enrich_example, package="plotthis")
#'   enrich_example$Database <- "DB1"
#'   enrich_example2 <- enrich_example
#'   enrich_example2$Database <- "DB2"
#'   enrich_example2$ID <- paste0(enrich_example2$ID, "_DB2")
#'   enrich_example2$Description <- paste0(enrich_example2$Description, " (DB2)")
#'   enrich_multidb_example <- rbind(enrich_example, enrich_example2)
#' }
#' }
#' @name enrich_multidb_example
NULL

#' An example of GSEA result from fgsea package
#' @concept data
#' @examples
#' \dontrun{
#' if (interactive()) {
#'  set.seed(1234)
#'  data(geneList, package="DOSE")
#'  gsea_example <- DOSE::gseDO(geneList)
#'  gene_ranks <- gsea_example@geneList
#'  gene_sets <- gsea_example@geneSets
#'  gsea_example_pos <- gsea_example[gsea_example$p.adjust < 0.05 & gsea_example$NES > 0, ]
#'  gsea_example_neg <- gsea_example[gsea_example$p.adjust < 0.05 & gsea_example$NES < 0, ]
#'  gsea_example <- rbind(
#'      gsea_example_pos[sample(1:nrow(gsea_example_pos), 5), ],
#'      gsea_example_pos[sample(1:nrow(gsea_example_pos), 5), ]
#'  )
#'
#'  attr(gsea_example, "gene_ranks") <- gene_ranks
#'  attr(gsea_example, "gene_sets") <- gene_sets[gsea_example$ID]
#' }
#' }
#' @name gsea_example
NULL

#' An example data for dimensionality reduction plot
#'
#' @description
#' This dataset is generated from the scvelo (scv.datasets.pancreas()) with
#' the scvelo run on the dataset.
#' Then the cell embeddings and velocity embeddings are extracted (200 downsampled), which are the first
#' 4 columns of the data frame.
#' The fifth column is the group identifier (clusters), and the sixth column is a fake
#' grouping variable used to visualize stats, facetting, etc.
#' An attribute "graph" is added to the data frame, which is a square matrix of the
#' cell-cell distances, which is used for the graph (network) on dimensionality reduction
#' plots.
#'
#' @concept data
#' @name dim_example
NULL
