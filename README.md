# Data Science Coursework 2026

## Informacion del Estudiante
- **Nombre:** Kevin Miguel Yax Puac
- **Carnet:** 1529422
- **Materia:** Ciencia de Datos / Analisis Exploratorio de Datos (EDA)
- **Ciclo Academico:** 2026

---

## Descripcion General
Este repositorio contiene el material academico, practicas guiadas, cuadernos computacionales y desarrollos analiticos orientados a la Ciencia de Datos y al Analisis Exploratorio de Datos (EDA). El programa de trabajo abarca flujos de implementacion tanto en lenguaje R como en Python, cubriendo desde la manipulacion y visualizacion de datos hasta tecnicas formales de preprocesamiento, diagnostico de patrones de valores perdidos, algoritmos de imputacion multivariada y tratamiento de valores atipicos.

---

## Arquitectura y Estructura del Repositorio

```text
data-science-coursework-2026/
|
|-- 9_7_26.R                     # Fundamentos de programacion en R: estructuras de datos y operaciones vectorizadas
|-- graficas13_7_26.R            # Visualizacion estadistica y gramatica de graficos con ggplot2
|-- clase_27_7_26.Rmd            # Analisis reproducible del dataset Titanic en R Markdown
|-- clase_27_7_26.html           # Reporte compilado del analisis de supervivencia
|-- clase_3_8_26.ipynb           # Analisis multidimensional en Python (pandas, seaborn, plotly)
|-- clase_3_8_26.py              # Script ejecutable de manipulacion y graficacion en Python
|-- claseR_3_8_26.qmd            # Cuaderno Quarto con integración de analisis exploratorio
|-- clase_6_8_26.qmd             # Generacion y contraste de datos sinteticos en R y Python
|-- EDA.qmd                      # Documento integral de tecnicas de imputacion y analisis bilingue
|-- titanic_BD.xlsx              # Dataset tabular complementario de pasajeros del Titanic
|
`-- clase-eda-2026/              # Proyecto modularizado de Analisis Exploratorio de Datos
    |-- clase-eda-2026.Rproj     # Archivo de configuracion de entorno de RStudio
    |-- 00-instalar-paquetes.R   # Verificacion e instalacion dinamica de librerias
    |-- 00-setup-entorno.R       # Inicializacion de variables globales y estructura de directorios
    |-- 01-carga-datos.R         # Modulo de generacion de datos sinteticos con patrones MCAR y MAR
    |-- 02_imputacion_R.R        # Algoritmos de imputacion (mediana, regresion y MICE)
    |-- 03_outliers_R.R          # Metodos de deteccion (IQR) y tratamiento por winsorizacion
    `-- informe_eda.qmd          # Plantilla tecnica de reporte de investigacion en Quarto
```

---

## Ejes Tematicos

### 1. Analisis Exploratorio de Datos (EDA)
- Inspeccion estructural de variables univariadas y multivariadas.
- Analisis de tablas de contingencia y proporciones relativas.
- Graficacion bidimensional y tridimensional interactiva.

### 2. Tratamiento de Datos Faltantes
- Identificacion de mecanismos de perdida: Missing Completely at Random (MCAR) y Missing at Random (MAR).
- Diagnostico visual de matrices de ausencia y co-ocurrencia de valores nulos.
- Estrategias de imputacion simple (mediana, moda) e imputacion avanzada mediante Multivariate Imputation by Chained Equations (MICE) y modelos predictivos.

### 3. Deteccion y Manejo de Outliers
- Evaluacion de dispersion utilizando el Rango Intercuartilico (IQR) y distancias estadisticas.
- Aplicacion de tecnicas de normalizacion y winsorizacion de colas de distribucion para estabilizar modelos.

---

## Requisitos y Configuracion del Entorno

### Entorno R
- Version de R: 4.2.0 o superior.
- Librerias principales:
  - Manipulacion y transformacion: `tidyverse`, `dplyr`, `tidyr`, `here`
  - Visualizacion: `ggplot2`, `corrplot`
  - Datos faltantes e imputacion: `mice`, `naniar`, `VIM`, `psych`
  - Reportabilidad: `rmarkdown`, `knitr`

### Entorno Python
- Version de Python: 3.9 o superior.
- Bibliotecas principales:
  - Estructuras y computo cientifico: `pandas`, `numpy`
  - Visualizacion: `matplotlib`, `seaborn`, `plotly`
  - Preprocesamiento y machine learning: `scikit-learn`, `missingno`

### Compilacion de Documentos
- Se recomienda contar con Quarto CLI instalado para el renderizado de documentos interactivos (`.qmd`) a formatos HTML o PDF.

