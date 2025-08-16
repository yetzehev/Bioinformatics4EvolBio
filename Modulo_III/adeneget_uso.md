# Paquetería `adegenet`

La documentación para la paquetería puede consultarse [aquí](https://academic.oup.com/bioinformatics/article/24/11/1403/191127)

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
<sub>Se recomienda evitar los espacios en los nombres de carpetas para evitar errores de carga.</sub>

El archivo es un VCF, por lo que tenemos que utilizar la función `read.vcfR` de la paquetería `vcfR`
```R
fish.vcf <- read.vcfR("plectropomus_leopardus/radiator_data_20220330_1452.vcf")
```

Convertir nuestro objeto VCF a un objeto Genind

```R
fish.ind <- vcfR2genind(fish.vcf) # 4.47Gb usage for a few seconds analysis
```


## Metadatos 
Para este análisis, contamos con las coordenadas de los sitios de muestreo y la asignación de regiones de acuerdo a su cercanía a la costa, de la siguiente manera:

| STRATA               | Latitude  | Longitude | Region    |
| -------------------- | --------- | --------- | --------- |
| TorresStrait         | \-10.1926 | 142.2947  | GBR       |
| PrincessCharlotteBay | \-14.3707 | 143.9447  | GBR       |
| Ribbons              | \-14.8105 | 145.6973  | GBR       |
| EscapeReef           | \-15.8763 | 145.7992  | GBR       |
| Townsville           | \-18.2348 | 146.7342  | GBR       |
| Swains               | \-21.9814 | 152.4738  | GBR       |
| CapricornBunkers     | \-23.5039 | 152.002   | GBR       |
| Flinders             | \-17.5657 | 148.4762  | Coral Sea |
| Marion               | \-19.399  | 152.3002  | Coral Sea |
| LihouWest            | \-17.7084 | 151.3075  | Coral Sea |
| LihouEast            | \-17.357  | 151.9831  | Coral Sea |

### Agregar los metadatos al archivo genind
```R
pop_info <- read.csv("plectropomus_leopardus/strata.filtered.tsv", sep = "\t", 
                     stringsAsFactors = FALSE)
```

Nuestros datos se encuentran de la siguiente forma
| INDIVIDUALS | STRATA           |
| ----------- | ---------------- |
| EP1A-C07    | CapricornBunkers |
| EP1A-H08    | CapricornBunkers |
| EP1A-B08    | CapricornBunkers |
| EP1A-D08    | CapricornBunkers |
...

Tenemos que coordinar el orden de nuestro objeto Genind con los metadatos, para ello utilizaremos el siguiente código
```R
pop_info <- pop_info[match(indNames(fish.ind), pop_info$INDIVIDUALS), ]
```

Ahora agregaremos los metadatos al objeto Genind
```R
pop(fish.ind) <- as.factor(pop_info$STRATA)
```

## Running the DAPC in `adegenet`
```R
fish.dapc <- dapc(fish.ind, n.pca = 3, n.da = 2)
```