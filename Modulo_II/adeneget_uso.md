# Paquetería `adegenet`



```
library(adegenet)
library(ggplot2)
library(dartR)
library(vcfR)
```

Vamos a seleccionar el folder donde tenemos guardados nuestros archivos
> Si trabajamos con distintos sets de datos de distintos proyectos, podemos crear un proyecto específico. Esto nos permitirá guardar nuestros avances, tener las librerías y carpetas cargadas sin necesidad de estar buscando cada archivo de R a la vez.

```
setwd("analysis_R/curso_rembe")
```
Se recomienda evitar los espacios en los nombres de carpetas para evitar errores de carga.

```R
fish.vcf <- read.vcfR("plectropomus_leopardus/radiator_data_20220330_1452.vcf")
```

Convert the VCF to a genind object

```R
fish.ind <- vcfR2genind(fish.vcf) # 4.47Gb usage for a few seconds analysis
```

### Agregar los metadatos al archivo genind
```R
#--------- Pop info

pop_info <- read.csv("plectropomus_leopardus/strata.filtered.tsv", sep = "\t", 
                     stringsAsFactors = FALSE)

# match the order to your genind object
# Assuming your genind object is named 'gen'
pop_info <- pop_info[match(indNames(fish.ind), pop_info$INDIVIDUALS), ]

# add the population info to the genind object
pop(fish.ind) <- as.factor(pop_info$STRATA)
```

### Running the DAPC in `adegenet`
```R
fish.dapc <- dapc(fish.ind, n.pca = 3, n.da = 2)
```