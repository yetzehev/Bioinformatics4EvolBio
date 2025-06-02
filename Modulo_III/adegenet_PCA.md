# Adegenet

Instalación de las paqueterías a utilizar:

```R
install.packages("adegenet")
install.packages("ggplot2")
```

Vamos a cargar las librerías
```
library(adegenet)
library(ggplot2)
```
Les recomendamos que le echen vistazo a todo tipo de gráficos que se pueden hacer en la paquetería [ggplot2](https://r-graph-gallery.com/ggplot2-package.html)

Vamos a seleccionar el folder donde tenemos guardados nuestros archivos


```
setwd("analysis_R/curso_rembe")
```
> Si trabajamos con distintos sets de datos de distintos proyectos, podemos crear un proyecto específico. Esto nos permitirá guardar nuestros avances, tener las librerías y carpetas cargadas sin necesidad de estar buscando cada archivo de R a la vez.
> Se recomienda evitar los espacios en los nombres de carpetas para evitar errores de carga.


En este caso, vamos a utilizar un archivo `Genepop`, por lo que tenemos que especificar la configuración de nuestros loci (`ncode`), si corresponden a 2 dígitos (`2L`) o 3 dígitos por alelo (`3L`)
```
martillo_zyg.ind <- read.genepop ("SZ56_final.gen", ncode=3L)
```


```
sin_outs.light <- gi2gl(sin_outs.ind, parallel = FALSE, verbose = NULL)
```

```
# ----- Eigenvalues: cuál es el porcentaje de varianza explicada por los datos
sin_out.pca <- glPca(sin_outs.light, nf = 3)
barplot(100*sin_out.pca$eig/sum(sin_out.pca$eig),
        col = heat.colors(50), main="PCA Eigenvalues")
title(ylab="Percent of variance\nexplained", line = 2)
title(xlab="Eigenvalues", line = 1)

sin_out.pca
# === PCA of genlight object ===
#   Class: list of type glPca
# Call ($call):glPca(x = sin_outs.light, nf = 3)
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

```
#---------------- PCA

sin_out.pca.scores <- as.data.frame(sin_out.pca$scores)
sin_out.pca.scores$pop <- pop(sin_outs.light)

library(ggplot2)
set.seed(9)
pn <- ggplot(sin_out.pca.scores, aes(x=PC1, y=PC2, colour=pop)) +
  geom_point(size=2) +
  stat_ellipse(level = 0.95, size = 1) +
  scale_color_manual(values = cols) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  theme_bw()

pn


```

![Image](https://github.com/user-attachments/assets/b11e9f11-24a3-4b7a-87d0-0e67fd799020)

```
#------ DAPC neutral

pnw.dapc_neu <- dapc(sin_outs.light, n.pca = 3, n.da = 2)

scatter.dapc(pnw.dapc_neu, col = cols, cex = 2, legend = TRUE, clabel = F,
             posi.leg = "bottomleft", scree.pca = TRUE,
             posi.pca = "topleft", cleg = 0.75)


compoplot(pnw.dapc_neu,col = function(x) cols, posi = 'top')
compoplot(pnw.dapc_neu,col = cols, posi = 'top')

```
![Image](https://github.com/user-attachments/assets/be5c2e42-fb63-4830-9133-2b84ea4bcf81)


```
#------ DAPC

pnw.dapc <- dapc(outliers.light, n.pca = 3, n.da = 2)

scatter.dapc(pnw.dapc, col = cols, cex = 2, legend = TRUE, clabel = F,
        posi.leg = "bottomleft", scree.pca = TRUE,
        posi.pca = "topleft", cleg = 0.75)


compoplot(pnw.dapc,col = function(x) cols, posi = 'top')
compoplot(pnw.dapc,col = cols, posi = 'top')
```
![Image](https://github.com/user-attachments/assets/8025f4bf-3751-4d66-a112-d93cec4e6437)
