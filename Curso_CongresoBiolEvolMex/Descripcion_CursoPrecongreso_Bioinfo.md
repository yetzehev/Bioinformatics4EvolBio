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

## Presentación y conexión al servidor (10:00 - 11:00)
- Presentación de las instructoras y organizadores del curso (10:00 - 10:10)
- Presentación de los participantes: Nombre, Grado de estudios y si tu tesis fuera soundtrack, ¿qué canción o canciones incluirías? (10:10 - 10:30)
- Conexión a Rstudio server y clonación del repositorio de GitHub (10:30 - 10:45)
- Introducción a Rstudio (Daniela Félix) (10:45 - 11:00)

## Sección 1: Fundamentos 

### 1.1 R y RStudio (Daniela Félix) (11:00 - 11:10)

- **Demostración**: Interfaz de RStudio (consola, editor, environment, plots)

- **Ejercicio rápido**: Crear un script básico con comentarios


### 1.2 Objetos de R (Daniela Félix) (11:10 - 11:20)

- Tipos de objetos: vectores, matrices, data frames, listas

- **Ejercicio práctico**: Crear objetos de cada tipo

###  Pausa (11:20 - 11: 35)

### 1.3 Formatos de Datos en Bioinformática (Daniela Félix & Idalia Rojas) (11:35 - 12:05)

  - **1.3.1** Formato AB1

  - **1.3.2**  FASTA

  - **1.3.3**  FASTQ

  - **1.3.4**  Archivos BAM, SAM

  - **1.3.5** Archivos BED 

  - **1.3.5** Variant Calling File (VCF) 

  - **1.3.6** Plink 

  - **1.3.7** Genepop 

  - **1.3.8** Geneind

  - **1.3.9** Genlight

- ### 1.4 Transformación de Formatos (Daniela Félix & Idalia Rojas) (12:05 - 12:35)

- **Flujo de trabajo**: Diagrama de conversión entre formatos (Idalia)

- **Ejercicio práctico**: Generar un archivo Geneligth (Daniela)

  - Cargar un VCF  en R (`vcfR` package) 

  - Convertir el archivo a genelight con adegenet

- **Alternativas en R** (Daniela)

**PAUSA (15 min)**



------

## **Sección 2: Manipulación de Tablas ** 

### 2.1 Tidyverse 

### Introducción a la paqueteria: `tidyverse`  (Daniela)

- **Pipe operator** (`%>%`): Transformación intuitiva ([Referencia](https://rpubs.com/paraneda/tidyverse))
- **Set de datos:** Plectopromus

### 2.2 Filtrado y Edición  de tablas

Empleareamos un conjunto de datos publicos  para  extraer  y realizar un subconjunto de individuos empleando los metadatos.

- 2.2.1 Dependencias para la edición y filtrado de tablas
  
- 2.2.2 Cargar archivos en Rstudio
  
- 2.2.3 Editar las tablas de datos
  
- 2.2.4 Creacion de un subconjunto de datos
  
- **Ejercicio guiado**: Limpiar un conjunto de datos

  Objetivo: Dejar listas las tablas de datos`teocintles_meta` para filtrar el archivo VCF en la segunda sesión.
  
### 2.3 Integración de Metadatos

- 2.3.1 Agregar metadatos: coordenadas y altitud

- 2.3.2 Ejercicio:  Visualizar los genotipos sobre un un mapa y asignar paleta de colores basados en la `Subespecie`.

  

------

## Sección 3: Visualización (2h)

### 3.1 Visualización de Estadísticos (1 h) 

- **SFS**: Cálculo y visualización del Site Frequency Spectrum (SFS) (Daniela)

- **HierFstat demo**: Frecuencias alélicas  (Idalia)

**PAUSA (15 min)**

### 3.2 PCA/DAPC con SNPs (Daniela)

Flujo de trabajo con `adegenet`

### 3.3 Graficar en Rstudio los índices de ancestría  (Idalia)

Diagrama de flujo: Formular hipótesis sobre estructura genética y herramientas para evaluarlas (https://www.data-to-viz.com/)

K-means calculado con `tess3r` y`ADMIXTURE` (Dos conjuntos de datos  y dos herramientas)

### **3.4** Visualizacion de arboles en R (Idalia)



- `FastTree` (SNPs)  & `IQtree` (SNPs?)

- Conjunto de datos: Tres subespecies de Zea mays 

  Visualizacion de  Filogenias (SNPs): Demostracion con `ape`.
