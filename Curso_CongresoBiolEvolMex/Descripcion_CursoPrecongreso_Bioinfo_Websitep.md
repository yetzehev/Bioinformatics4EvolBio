- 

# Bioinformática para genética de poblaciones

### **Responsables:**

- Idalia C. Rojas Barrera
- Daniela Félix
### **Descripción**

El curso de precongreso de ** Manejo de Tablas y Visualización de Datos Genéticos en RStudio ** es un extracto del **Módulo II** del curso de **Genómica de Poblaciones**, desarrollado por integrantes de la **ReMBE**. El curso ha sido adaptado para cubrir el manejo de datos y su visualización, utilizando paquetes y librerías disponibles en **RStudio**.

**Fechas: ** 10 y 11 de noviembre de 2025
**Duracion: ** 2 sesiones de 4 horas cada una
**Institución que expedir las constancias:** Red Mexicana de Biologia Evolutiva
**Valor curricular:** NA
**Costos:** Incluido en el costo de inscripcion al Primer Congreso Mexicano de Biologia Evolutiva


------

## Módulo II: Manejo de Tablas y Visualización de Datos en RStudio 

## Objetivos del Módulo

- Dominar el manejo de diferentes formatos de datos bioinformáticos en R
- Aprender técnicas de manipulación de tablas con tidyverse
- Desarrollar habilidades para visualizar datos genéticos
- Aplicar métodos de agrupamiento para el análisis de poblaciones

## Sección 1: Fundamentos 

### 1.1 R y RStudio 

- **Demostración**: Interfaz de RStudio (consola, editor, environment, plots)
- **Ejercicio rápido**: Crear un script básico con comentarios

### 1.2 Objetos de R 

- Tipos de objetos: vectores, matrices, data frames, listas

- **Ejercicio práctico**: Crear objetos de cada tipo

### 1.3 Formatos de Datos en Bioinformática 

- **Explicación visual**: Mostrar ejemplos de cada formato:
  - **1.3.1** Variant Calling File (VCF)
  - **1.3.2** Plink
  - **1.3.3** BAM, SAM, BED 
  - **1.3.4** Genepop 
  - **1.3.5** Metadatos
- **Comparativa**: Tabla con columnas "Formato", "Estructura", "Casos de uso"
- **Ejercicio práctico**: Cargar un VCF pequeño en R (`vcfR` package)

- ### 1.4 Transformación de Formatos 

- **Flujo de trabajo**: Diagrama de conversión entre formatos
- **Demostración en PGD Spider**
- **Alternativas en R**

------
## Sección 2: Manipulación de Tablas 

### 2.1 Tidyverse 

### Introducción a la paqueteria: `tidyverse` 

- **Pipe operator** (`%>%`): Transformación intuitiva

### 2.2 Filtrado y Edición 

- **Casos comunes**:
  
  - Eliminar NAs
  - Reordenar columnas
  - Unir tablas
- **Ejercicio guiado**: Limpiar un conjunto de datos

### 2.3 Integración de Metadatos
- **Conjunto de datos curados e integración de los metadatos para realizar  visualizaciones**

- **Ejemplo práctico**: Combinar datos genéticos con información geográfica
- **Importancia**: Color por población, forma por región, especie, variedad, etc.


------

## Sección 3: Visualización 

### 3.1 Visualización de Estadísticos (45 min)

  - **HierFstat demo**: Frecuencias alélicas 

  - **SFS**: Cálculo y visualización del Site Frequency Spectrum (SFS)

### 3.2 PCA con SNPs 

Flujo de trabajo con `adegenet`

### 3.3 Graficar en Rstudio los índices de ancestría  
K-means calculado con `ADMIXTURE`).

### **3.4** Visualizacion de arbles en R 
  Filogenias (SNPs): Demostracion con `ape`

