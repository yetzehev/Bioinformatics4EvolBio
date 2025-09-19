# Conversión de archivos en dartR


```R
library(vcfR)
library(adegenet)
library(dartR)
```

```
setwd("Curso_CongresoBiolEvolMex\Seccion_II\datos\plectropomus_leopardus")
```

El archivo es un VCF, por lo que tenemos que utilizar la función `read.vcfR` de la paquetería `vcfR`
```R
fish.vcf <- read.vcfR("plectropomus_leopardus/radiator_data_20220330_1452.vcf")
```

Convertir nuestro objeto VCF a un objeto Genind

```R
fish.ind <- vcfR2genind(fish.vcf) # 4.47Gb usage for a few seconds analysis
```


