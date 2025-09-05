# devtools::install_github("cayek/TESS3/tess3r", force = TRUE)
# install.packages("rworldmap")
# devtools::install_github('ericarcher/stratag')
# devtools::install_github('ericarcher/swfscMisc')
# install.packages("mapplots")
# devtools::install_github("thierrygosselin/radiator")
# devtools::install_github("bcm-uga/LEA")
# install.packages("marmap")

library(tidyverse)
library(tess3r)
library(maps)
library(ggplot2)
library(rworldmap)
library(strataG)
library(swfscMisc)
library(radiator)
library(fields)
library(RColorBrewer)
library(mapplots)
library(LEA)
library(marmap)
library(raster)
library(vcfR)
library(tess3r)
library(maps)
library(rworldmap)

# genotype datafile
fish.vcf <- read.vcfR("plectropomus_leopardus/radiator_data_20220330_1452.vcf")

# extract IDs
ids <- getID(fish.vcf)

# check for duplicates
anyDuplicated(ids)

# which ones are duplicated
duplicated_ids <- ids[duplicated(ids)]
duplicated_ids

ids_fixed <- ids
# Replace missing IDs ('.') with chr:pos
pos <- getPOS(fish.vcf)
chrom <- getCHROM(fish.vcf)

ids_fixed[ids_fixed == "."] <- paste0(chrom[ids_fixed == "."], ":", pos[ids_fixed == "."])

# If duplicates still exist, append row numbers
if(anyDuplicated(ids_fixed) > 0){
  dup_idx <- which(duplicated(ids_fixed) | duplicated(ids_fixed, fromLast = TRUE))
  ids_fixed[dup_idx] <- paste0(ids_fixed[dup_idx], "_", dup_idx)
}

# Assign back to vcfR object
fish.vcf@fix[,3] <- ids_fixed


fish.ind <- vcfR2genind(fish.vcf) # 4.47Gb usage for a few seconds analysis

#' /// GENIND OBJECT /////////
#'   
#'   // 200 individuals; 4,548 loci; 9,096 alleles; size: 9.3 Mb
#' 
#' // Basic content
#' @tab:  200 x 9096 matrix of allele counts
#' @loc.n.all: number of alleles per locus (range: 2-2)
#' @loc.fac: locus factor for the 9096 columns of @tab
#' @all.names: list of allele names for each locus
#' @ploidy: ploidy of each individual  (range: 2-2)
#' @type:  codom
#' @call: adegenet::df2genind(X = t(x), sep = sep)
#' 
#' // Optional content
#' - empty -

fish_geno <- tab(fish.ind, NA.method = "mean") # mean imputation of missing values
fish_geno <- round(fish_geno) # Convert to integers if needed



#-------------------------------------
#     Set the files
#-------------------------------------

# Load strata (assumed to have SampleID, Stratum columns)
strata <- read.table("plectropomus_leopardus/strata.filtered.tsv", sep = "\t",
                     header = TRUE)

# Load coordinates (assumed to have Stratum, X, Y columns)
coords <- read.csv("plectropomus_leopardus/coordinates.csv", header = TRUE)

# Merge to assign coordinates to each sample
sample_coords <- merge(strata, coords, by = "STRATA")

# Order to match the genind/geno matrix
sample_coords <- sample_coords[match(indNames(fish.ind), sample_coords$INDIVIDUALS), ]

# Extract only coordinates matrix
coord_matrix <- as.matrix(sample_coords[, c("Longitude", "Latitude")])


# Make sure the order of coord_matrix rows matches the order of your genind individuals:
sample_coords <- sample_coords[match(indNames(fish.ind), sample_coords$INDIVIDUALS), ]
coord_matrix <- as.matrix(sample_coords[, c("Longitude", "Latitude")])


# If your genind object is called *.ind
fish_geno <- tab(fish.ind, NA.method = "mean")  # convert to numeric, impute missing with mean
fish_geno <- round(fish_geno)  # make sure values are integers 0/1/2

# install.packages("rnaturalearth")
# install.packages("rnaturalearthdata")
library(maps)
library(fields)

library(rnaturalearth)
library(sf)


plot(coord_matrix, pch = 19, cex = .5, 
     xlab = "Longitude (°E)", ylab = "Latitude (°N)")
map(add = TRUE, interior = FALSE)



# Download coastline data
coast <- ne_coastline(scale = "medium", returnclass = "sf")

plot(st_geometry(coast), col = "grey70", bg = "lightblue",
     xlim = range(coord_matrix[,1]), ylim = range(coord_matrix[,2]))

points(coord_matrix[,1], coord_matrix[,2], pch=21, bg=cols, col="black", cex=1)


library(tess3r)

tess3.obj <- tess3(
  X = fish_geno,
  coord = coord_matrix,  # from your previous step
  K = 1:10,              # range of clusters to test
  ploidy = 2,
  method = "projected.ls",
  rep = 5
)


dev.new()
#-------------- Estimating ancestry coefficients 
plot(tess3.obj, pch = 19, col = "blue",
     xlab = "Number of ancestral populations",
     ylab = "Cross-validation score")





dev.new()
# retrieve tess3 Q matrix for K = 5 clusters 
q.matrix <- qmatrix(tess3.obj, K = 2)
# STRUCTURE-like barplot for the Q-matrix 
barplot(q.matrix, border = NA, space = 0, 
        xlab = "Individuals", ylab = "Ancestry proportions", 
        main = "Ancestry matrix") -> bp

axis(1, at = 1:nrow(q.matrix), labels = bp$order, las = 3, cex.axis = .4) 



dev.new()
my.colors <- c("tomato", "orange", "lightblue", "wheat","olivedrab")
my.palette <- CreatePalette(my.colors, 9)

plot(q.matrix, coord_matrix, method = "sea", interpol = FieldsKrigModel(10),
     xlab = "Longitude", ylab = "Latitude", 
     resolution = c(300,300), 
     col.palette = my.palette)

