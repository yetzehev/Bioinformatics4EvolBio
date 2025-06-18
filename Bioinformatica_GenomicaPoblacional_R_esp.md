# Bioinformática para genética de poblaciones 
Autoras:

- Idalia C. Rojas Barrera 

- Daniela Felix

  

**Nota:** El diseño de  este curso de genetica de poblaciones esta  basado en gran parte del curso en inglés disenado por [Grunwald](https://grunwaldlab.github.io/Population_Genetics_in_R/TOC.html), el contenido  ha sido adaptado  y nuevos modulos fueron agregados



**Duración: 20 h, 5 dias**
**Número de participantes: 10-15**

# Módulo I. Introducción (4h)

1.1 Cortísimo resumen de Genética de poblaciones (Nancy)
- 1.1.1 Concepto de poblacion 

1.2 Marcadores genéticos  	
- 1.2.1 SNPs (Idalia puede proveer el set de datos)
- 1.2.2  Microsatelites (Buscar un set de datos en linea o solcitar a algun integrante de la ReMBE)
- 1.2.3 Multicopia  (CNV) (Preguntar a Azalea sobre sus datos  de lenteja DOI: 10.1111/eva.13467)  

1.3 Repostorios de  datos genómicos públicos  (Idalia)
- 1.3.1 NCBI
- - 1.3.2 DRYAD (Datos Azalea Guerra, lentejas: https://doi.org/10.5061/dryad.q343c)
- 1.3.3 OSF (Datos Idalia Rojas,  maíz: https://osf.io/pqvt4/)


#  Módulo II. Manejo de  tablas de datos y visualización  en R (6h)

2.1. R y R studio (Daniela)

2.2 Objetos de R (Daniela)

2.3 Formatos de datos en Bioinformática (https://www.formbio.com/blog/your-essential-guide-different-file-formats-bioinformatics, Idalia)

- 2.3.1 FASTA
-  2.3.2 Variant calling File (VCF)
- 2.3.3 Plink 
- 2.3.4 Genepop (Daniela)
- 2.3.5 BAM, SAM, BED
- 2.3.6 GTF, GFF

2.4  Transformacion de formatos
- 2.4.1 PGD spider (https://software.bioinformatics.unibe.ch/pgdspider/)

  **PAUSA (15 min)**

2.4 Tydiverse package (https://rpubs.com/paraneda/tidyverse)
- 2.4.1 .....
- 2.4.2 ... developing

2.5 Filtrado y edicion de tablas de datos (https://www.stat.berkeley.edu/users/nolan/IntroRPgm/chap-DataFrame.html)

**PAUSA (15 min)**

2.6 Visualización de datos genéticos (Gustavo)

- 2.6.1 Agrupamiento  no supervisado: PCA , K-means
- 2.6.2 Phylogenies (Genes, SNPs): Neighbor-joining and Maximum Likelihood
- 2.6.3 Visualización de estadísticos de genética de poblaciones: Diversidad genética, índices 


# Módulo III. Análisis de datos en genética de poblaciones (8 h)

3.1 Estadísticos de genética de poblaciones  (Daniela)

- 3.3.1 Poppr package  (Daniela)
- 3.3.2 Adegenet package(Daniela)
- 3.3.3 Hierfstat  package ()



3.2 Estructura poblacional (Idalia, https://www.nature.com/articles/s41467-018-05257-7)

- 3.2.1 ADMIXTURE (STRUCTURE/ADMIXTURE)
- 3.2.2 Gradient Forest Test (Laura nos pasa los scripts)  

3.3  Seleccion tests (Idalia)
-	3.3.1 PCAdapt (Idalia/ )
-	3.3.2 RDA ( Daniela)
-	3.3. 3 LFMM (Daniela)



3. 4 Migración y flujo genético (Idalia)

- 3.4.1 Dstats ( DSuite, ANGSD, https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-017-2002-4)
3.4.2 TreeMix
3.3.3 Model-based inferences of gene flow (G-PhoCS, https://www.nature.com/articles/nature16544#Sec10 )

# Modulo IV.  Reto: Ejercicio de manejo de datos (4h)
Los estudiantes emplaran datos de sus proyectos de investigación o se les proporcionara un conjunto de datos públicos.  Considerando el tipo de datos y el contexto biologico plantearan una pregunta de genética de poblaciones, y realizaran los analisis ad hoc para responder la pregunta de investigacion planteada.
