# Adegenet

Instalación de `adegenet`:
```R
install.packages("adegenet")
```

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


