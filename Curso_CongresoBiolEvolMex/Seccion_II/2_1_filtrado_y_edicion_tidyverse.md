# Filtrado y edición de tablas en tidyverse

Existen distintas formas de manipular nuestros datos en R, y en esta sección utilizaremos la paquetería [tidyverse]("https://www.tidyverse.org/") para manipular nuestras bases de datos.
`tidyverse` se compone por distintas paqueterías diseñadas para manipular y visualizar datos en R, entre las paqueterías incluídas en este universo se encuentran: `ggplot2`, `string`, `dplyr`, entre otras.


Para cargar los metadatos para este curso, vamos a seleccionar el folder donde tenemos guardados nuestros archivos
> Si trabajamos con distintos sets de datos de distintos proyectos, podemos crear un proyecto específico. Esto nos permitirá guardar nuestros avances, tener las librerías y carpetas cargadas sin necesidad de estar buscando cada archivo de R a la vez.

```
setwd("Curso_CongresoBiolEvolMex\Seccion_II\datos\plectropomus_leopardus")
```

Ahora cargaremos la paquetería mediante la función `library()`
```R
library(tidyverse)
```

## Estructura de los datos 
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

Ahora crearemos un objeto llamado `pop_info` que utilizaremos para llamar a nuestros metadatos durante el análisis. En este caso, necesitamos hacer que nuestra columna de `INDIVIDUALS` coincida con los `indNames` de nuestro objeto `fish.ind` que contiene los datos genéticos.

```R
pop_info <- read_tsv("plectropomus_leopardus/strata.filtered.tsv") %>%
  slice(match(indNames(fish.ind), INDIVIDUALS))
```
Si notan, utilizamos `%>%`, este es un operador pipe y tiene la misma función que un pipe `|` en una interfase de línea de comandos, pero con algunas diferencias.

Si revisamos el objeto `pop_info`, veremos que tenemos algo como esto:
Nuestros datos se encuentran de la siguiente forma
| INDIVIDUALS | STRATA           |
| ----------- | ---------------- |
| EP1A-C07    | CapricornBunkers |
| EP1A-H08    | CapricornBunkers |
| EP1A-B08    | CapricornBunkers |
| EP1A-D08    | CapricornBunkers |
...

Ahora, agregaremos nuestros metadatos a nuestro objeto `genind`:
```R
pop(fish.ind) <- pop_info %>%
  pull(STRATA) %>%
  as_factor()
```