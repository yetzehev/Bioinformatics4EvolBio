# Metadatos

Con este código vamos a aprender a manejar metadatos en `tidyverse` y agregarlos a nuestro set de datos.

```R
library(tidyverse)
library(adegenet)
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

### Importar los metadatos a R y crear un objeto

Debemos corroborar el tipo de archivo en el que se encuentran guardados nuestros metadados, si es un archivo *.csv (separado por comas), un archivo *.tsv (separado por tabulaciones), *.txt (separado por espacios), etc. En este caso, los datos se encuentran un archivo TSV. R cuenta con distintas formas de cargar los datos, uno de ellos es mediante la función `read.csv`.

```R
pop_info <- read.table("plectropomus_leopardus/strata.filtered.tsv", sep = "\t", 
                     stringsAsFactors = FALSE)
```
El argumento `sep` nos permite especificar el tipo de "separación" de nuestros datos, dado que es mediante tabulaciones, debemos especificar `"\t"` que corresponde a dicho caracter especial, si fuese mediante comas, debemos especificar `","` 

Podemos corroborar que los archivos hayan sido leídos correctamente mediante la siguiente función:

```R
View(pop_info)
```

Donde, efectivamente, se encuentran organizados de la siguiente forma:

| INDIVIDUALS | STRATA           |
| ----------- | ---------------- |
| EP1A-C07    | CapricornBunkers |
| EP1A-H08    | CapricornBunkers |
| EP1A-B08    | CapricornBunkers |
| EP1A-D08    | CapricornBunkers |
