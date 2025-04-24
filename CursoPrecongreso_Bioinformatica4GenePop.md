# **Bioinformática para biología evolutiva**

### **Responsables:**

- Idalia C. Rojas Barrera
- Laura Figueroa Corona
- Daniela Félix

**Índice del curso de precongreso de Bioinformática para genética de poblaciones**
Este curso es un extracto del **Módulo II** del curso de **Genómica de Poblaciones**, desarrollado por los integrantes de la **ReMBE**. El curso será adaptado para cubrir el manejo de datos y su visualización, utilizando paquetes y librerías disponibles en **RStudio**.

------

# **Módulo II. Manejo de tablas de datos y visualización en R (6h)**

## **Sección 1 (1h 45 min)**

**2.1. R y RStudio** (Daniela)
**2.2. Objetos de R** (Daniela)
**2.3. Formatos de datos en Bioinformática** ([Fuente](https://www.formbio.com/blog/your-essential-guide-different-file-formats-bioinformatics)) (Idalia)

- **2.3.1** FASTA (Idalia)
- **2.3.2** Variant Calling File (VCF) (Idalia)
- **2.3.3** Plink (Idalia)
- **2.3.5** BAM, SAM, BED (Idalia)
- **2.3.5**Genepop (Daniela)
- **2.3.6** GTF, GFF (Daniela)
- **2.3.7** Metadatos (Daniela*)

**2.4. Transformación de formatos**

- **2.4.1** PGD Spider ([Enlace](https://software.bioinformatics.unibe.ch/pgdspider/)) (Daniela*)
- **2.4.2** Paqueterías y herramientas en R (Daniela)
- **2.4.3** dartR ([Enlace](https://green-striped-gecko.github.io/dartR/))
  - **Daniela, ¿tienes algunas sugerencias para esta sección?**
  - Si! la paquetería dartR sirve para transformar y escribir formatos para datos genéticos. Necesito explorarla más pero seguro la podemos meter.
- **2.4.4** adegenet (Daniela)

**PAUSA (15 min)**

------

## **Sección II. Manipulación de tablas de datos en R (1h 45 min)** (Laura)

**2.5. Manipulación y limpieza de tablas de metadatos en R**

- **2.5.1** Paquetes `dplyr` o `tidyverse` ([Referencia](https://rpubs.com/paraneda/tidyverse))
- **2.5.2** Visualización de estadísticos de genética de poblaciones: diversidad genética, índices
  - Ejercicio de frecuencias alélicas (se propone usar `HierFstat`) (Laura)
  - **Input:** SFS, visualizar gráfica
  - **2.5.3** Filtrado y edición de tablas de datos ([Referencia](https://www.stat.berkeley.edu/users/nolan/IntroRPgm/chap-DataFrame.html))

**PAUSA (15 min)**

------

## **Sección 3 (2h). Visualización de datos genéticos**

**2.6. Visualización de datos genéticos**

- **2.6.1** Análisis de Componentes Principales (PCA) en `adegenet` (Daniela)
- **2.6.2** K-means (Graficar en R los índices de ancestría calculados con `ADMIXTURE`) (Idalia)
  - Buscar una **Shiny app** para graficar mapas de coordenadas y composición de estructura (Laura)
- **2.6.3** Filogenias (genes, SNPs): Neighbor-Joining y Máxima Verosimilitud (Idalia)
