# Adegenet

En esta sección utilizaremos la base de datos de XXX, que corresponde a XXX especie.

Instalación de las paqueterías a utilizar:

```R
install.packages("adegenet", dep=TRUE)
install.packages("ggplot2")
```

Vamos a cargar las librerías
```R
library(adegenet)
library(ggplot2)
library(vcfR) # para archivos VCF
library(dartR) # previamente instalada
```
Les recomendamos que le echen vistazo a todo tipo de gráficos que se pueden hacer en la paquetería [ggplot2](https://r-graph-gallery.com/ggplot2-package.html)

Vamos a seleccionar el folder donde tenemos guardados nuestros archivos

PUEDO UTILIZAR ESTOS DATOS PERO YA ESTAN EN ARCHIVO GENIND, AUNQUE LOS PUEDO CONVERTIR A GENEPOP Y LUEGO A GENIND
```R
data(nancycats)
```

```R
setwd("analysis_R/curso_rembe")
```
> Si trabajamos con distintos sets de datos de distintos proyectos, podemos crear un proyecto específico. Esto nos permitirá guardar nuestros avances, tener las librerías y carpetas cargadas sin necesidad de estar buscando cada archivo de R a la vez.
> Se recomienda evitar los espacios en los nombres de carpetas para evitar errores de carga.


En este caso, vamos a utilizar un archivo `Genepop`, por lo que tenemos que especificar la configuración de nuestros loci (`ncode`), si corresponden a 2 dígitos (`2L`) o 3 dígitos por alelo (`3L`)
```R
martillo_zyg.ind <- read.genepop ("SZ56_final.gen", ncode=3L)
```

Si lo que tenemos es un archivo VCF, podemos convertirlo a genind de la siguiente forma:
```
my_genind <- vcfR2genind(vcf)
```

Dado que `ggplot2` no puede utilizar directamente nuestro objeto `Genind`, debemos convertilo en un archivo `genlight` 
```R
martillo_zyg.light <- gi2gl(martillo_zyg.ind, parallel = FALSE, verbose = NULL)
```

### Cálculo de Eigenvalues
```R
# ----- Eigenvalues: cuál es el porcentaje de varianza explicada por los datos

sin_out.pca <- glPca(martillo_zyg.light, nf = 3)
```

```R
barplot(100*sin_out.pca$eig/sum(sin_out.pca$eig),
        col = heat.colors(50), main="PCA Eigenvalues")
title(ylab="Percent of variance\nexplained", line = 2)
title(xlab="Eigenvalues", line = 1)
```

Veamos que hay dentro del objeto
```R
sin_out.pca

# === PCA of genlight object ===
#   Class: list of type glPca
# Call ($call):glPca(x = martillo_zyg.light, nf = 3)
# 
# Eigenvalues ($eig):
#   1.661 1.603 1.537 1.475 1.422 1.392 ...
# 
# Principal components ($scores):
#   matrix with 92 rows (individuals) and 3 columns (axes) 
# 
# Principal axes ($loadings):
#   matrix with 1450 rows (SNPs) and 3 columns (axes) 
```

### Gráfico de PCA en `ggplot2`

Ahora crearemos el gráfico de PCA en `ggplot2`

Nuestros `scores` del PCA los convertiremos en un dataframe para que `ggplot2` pueda leerlo

```R
martillo_zyg.pca.scores <- as.data.frame(martillo_zyg.pca$scores)
```

Agregaremos nuestras poblaciones al dataframe, el cual llamaremos desde nuestro archivo `Genelight`
```R
martillo_zyg.pca.scores$pop <- pop(martillo_zyg.light)
```

```R
set.seed(9)
pn <- ggplot(martillo_zyg.pca.scores, aes(x=PC1, y=PC2, colour=pop)) +
  geom_point(size=2) +
  stat_ellipse(level = 0.95, size = 1) +
  scale_color_manual(values = cols) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  theme_bw()
```

Veamos el gráfico
```R
pn
```

![Image](https://github.com/user-attachments/assets/b11e9f11-24a3-4b7a-87d0-0e67fd799020)

### Gráfico de PCA en `adegenet`

```R
martillo_zyg.dapc <- dapc(martillo_zyg.light, n.pca = 3, n.da = 2)

scatter.dapc(martillo_zyg.dapc, col = cols, cex = 2, legend = TRUE, clabel = F,
             posi.leg = "bottomleft", scree.pca = TRUE,
             posi.pca = "topleft", cleg = 0.75)


compoplot(martillo_zyg.dapc,col = function(x) cols, posi = 'top')
compoplot(martillo_zyg.dapc,col = cols, posi = 'top')

```
![Image](https://github.com/user-attachments/assets/be5c2e42-fb63-4830-9133-2b84ea4bcf81)


### Gráfico de densidad en `adegenet`
```R
compoplot(martillo_zyg.dapc,col = function(x) cols, posi = 'top')
compoplot(martillo_zyg.dapc,col = cols, posi = 'top')
```
![Image](https://github.com/user-attachments/assets/8025f4bf-3751-4d66-a112-d93cec4e6437)
