# Site frequency spectrum analysis (SFS)

Para esta sección, seguiremos utilizando el ejemplo de los datos de peces

```R
library(adegenet)
library(pegas)       
library(poppr)      
```

Continuando con nuestro objeto genind llamado `fish.ind`

Primero obtendremos los counts por individuo:
```R
allele_counts <- tab(fish.ind, freq = FALSE)  # rows = individuals, cols = alleles
```

Ahora mapearemos los alelos a los loci:
```R
locus_factor <- locFac(fish.ind)
```

Minor allele count por locus
```R
minor_counts <- tapply(1:ncol(allele_counts), locus_factor, function(cols) {
  counts_per_allele <- colSums(allele_counts[, cols, drop = FALSE], na.rm = TRUE)
  min(counts_per_allele)
})
```

Removemos los loci monomórficos
```R
minor_counts <- minor_counts[minor_counts > 0]
```


Count-based SFS
```R
sfs <- table(minor_counts)
```

Finalmente graficamos en un barplot nuestro resultados:
```R
barplot(sfs,
        xlab = "Minor allele count",
        ylab = "Number of loci",
        main = "Count-based Site Frequency Spectrum",
        col = "steelblue")
```