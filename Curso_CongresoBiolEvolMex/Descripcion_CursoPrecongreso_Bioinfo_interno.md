# **Bioinformática para biología evolutiva**

### **Responsables:**

- Idalia C. Rojas Barrera

- Daniela Félix

### **Descripción**

El curso de precongreso de **Manejo de Tablas y Visualización de Datos en RStudio ** es un extracto del **Módulo II** del curso de **Genómica de Poblaciones**, desarrollado por los integrantes de la **ReMBE**. El curso ha sido adaptado para cubrir el manejo de datos y su visualización, utilizando paquetes y librerías disponibles en **RStudio**.

**Fechas: ** 10 y 11 de noviembre de 2025
**Duracion: ** 2 sesiones de 4 horas cada una
**Institución que expedir las constancias:** Red Mexicana de Biologia Evolutiva
**Valor curricular:** NA
**Costos:** Incluido en el costo de inscripcion al Primer Congreso Mexicano de Biologia Evolutiva 



## Módulo II: Manejo de Tablas y Visualización de Datos en RStudio 

## Objetivos del Módulo

- Dominar el manejo de diferentes formatos de datos bioinformáticos en R
- Aprender técnicas de manipulación de tablas con tidyverse
- Desarrollar habilidades para visualizar datos genéticos
- Aplicar métodos de agrupamiento para el análisis de poblaciones

## Sección 1: Fundamentos 

### 1.1 R y RStudio (Daniela)

- **Demostración**: Interfaz de RStudio (consola, editor, environment, plots)

- **Ejercicio rápido**: Crear un script básico con comentarios

  

### 1.2 Objetos de R (Daniela)

- Tipos de objetos: vectores, matrices, data frames, listas

- **Ejercicio práctico**: Crear objetos de cada tipo

  

### 1.3 Formatos de Datos en Bioinformática (D&I)

- **Explicación visual**: Mostrar ejemplos de cada formato:

  - **1.3.1** Variant Calling File (VCF) (Idalia)
  - **1.3.2** Plink (Idalia)
  - **1.3.3** BAM, SAM, BED (Idalia)
  - **1.3.4** Genepop  (Daniela)
  - **1.3.5** Metadatos (Daniela)

- **Comparativa**: Tabla con columnas "Formato", "Estructura", "Casos de uso"

- **Ejercicio práctico**: 

  - Cargar un VCF  en R (`vcfR` package) (Idalia)

  - Extraer lista de genotipos (Idalia)

    

- ### 1.4 Transformación de Formatos (D&I)

- **Flujo de trabajo**: Diagrama de conversión entre formatos (Idalia)

- **Demostración en PGD Spider ([Enlace](https://software.bioinformatics.unibe.ch/pgdspider/)) **  (Daniela)

- **Alternativas en R** (Daniela)

**PAUSA (15 min)**



------

## **Sección 2: Manipulación de Tablas ** 

### 2.1 Tidyverse 

### Introducción a la paqueteria: `tidyverse`  (Daniela)

- **Pipe operator** (`%>%`): Transformación intuitiva ([Referencia](https://rpubs.com/paraneda/tidyverse))

### 2.2 Filtrado y Edición  (Daniela)

- **Casos comunes**: (Sugerencia, esta seccion puede ser modificada)
  
  - Eliminar NAs
  - Reordenar columnas
  - Unir tablas
  
- **Ejercicio guiado**: Limpiar un conjunto de datos

  Objetivo: Dejar listas las tablas de datos para grafcar al inicio de la segunda sesión.
  
### 2.3 Integración de Metadatos

  - Conjunto de datos curados e integración de los metadatos para realizar  visualizaciones (Idalia)

  - **Ejemplo práctico**: Combinar datos genéticos con información geográfica
  - **Importancia**: Color por población, forma por región, especie, variedad, etc.



------

## Sección 3: Visualización (2h)

### 3.1 Visualización de Estadísticos (1 h) (Idalia)

- **HierFstat demo**: Frecuencias alélicas 

- **SFS**: Cálculo y visualización del Site Frequency Spectrum (SFS)

**PAUSA (15 min)**

### 3.2 PCA con SNPs (Daniela)

Flujo de trabajo con `adegenet`

### 3.3 Graficar en Rstudio los índices de ancestría  (Idalia)

K-means calculado con tess3r`ADMIXTURE`).

### **3.4** Visualizacion de arboles en R (Idalia)

  Filogenias (SNPs): Demostracion con `ape`

