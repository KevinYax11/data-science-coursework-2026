# Data Science Coursework 2026

## Informacion Academica
- **Estudiante:** Kevin Miguel Yax Puac
- **Carnet:** 1529422
- **Materia:** Ciencia de Datos / Analisis Exploratorio de Datos (EDA) y Machine Learning
- **Ciclo Academico:** 2026

---

## Descripcion General
Este repositorio alberga el conjunto integral de proyectos analiticos, practicas de programacion estadistica, flujos de trabajo reproducibles y modelos de machine learning desarrollados a lo largo del ciclo academico. El marco de trabajo combina los ecosistemas de R y Python para abordar el ciclo de vida completo de la ciencia de datos: desde la extraccion y limpieza de fuentes heterogeneas hasta la formulacion de modelos predictivos avanzados, pasando por diagnosticos formales de imputacion multivariada y creacion de cuadros de mando empresariales en Power BI.

---

## Arquitectura del Proyecto

```text
data-science-coursework-2026/
|
|-- DataScience/                               # Ecosistema analitico y predictivo en R
|   |-- modelo_predictivo_diamonds.qmd         # Modelado supervisado con tidymodels (XGBoost, RF, LM)
|   |-- mejor_modelo_diamantes.rds             # Modelo predictivo serializado de alto rendimiento
|   |-- receta_diamantes.rds                   # Pipeline formal de preprocesamiento de datos (recipes)
|   |-- Analisis Exploratorio R.qmd            # Estudio comparativo multivariado e imputacion MICE
|   |-- Preprocesamiento de datos.Rmd          # Diagnostico y transformacion reproducible del dataset Titanic
|   |-- ejemplo.R                              # Script integrador de scraping, algebra vectorial y ggplot2
|   |-- clase_eda_2026/                        # Arquitectura modular de produccion en R
|   |   |-- 00_instalar_paquetes.R             # Verificacion dinamica de dependencias de entorno
|   |   |-- 01_cargar_datos.R                  # Generacion sintetica de datos bajo patrones MCAR y MAR
|   |   |-- 02_imputacion_r.R                  # Pipeline de imputacion: Mediana, Regresion y MICE (PMM)
|   |   |-- 03_outliers_r.R                    # Deteccion analitica IQR y estabilizacion por Winsorizacion
|   |   |-- run_all.R                          # Script orquestador para ejecucion desatendida del flujo
|   |   |-- informe_eda.qmd                    # Plantilla de reporte tecnico reproducible en Quarto
|   |   `-- data/                              # Directorio de persistencia de datos serializados (.rds)
|   `-- clases_iniciales/                      # Modulo de practicas y apuntes fundamentales de R
|       |-- 9_7_26.R                           # Estructuras de datos, extraccion web con rvest
|       |-- graficas13_7_26.R                  # Capas gramaticales de ggplot2 y funciones vectorizadas
|       |-- clase_27_7_26.Rmd                  # Analisis multidimensional de supervivencia (Titanic)
|       |-- clase_6_8_26.qmd                   # Simulacion estocastica de datos y variables de dispersion
|       |-- EDA.qmd                            # Cuaderno exploratorio bilingue preliminar
|       `-- titanic_BD.xlsx                    # Registro tabular original del pasaje del Titanic
|
|-- DataSciencePython/                         # Ecosistema analitico y predictivo en Python
|   |-- clasificadores.py                      # Evaluacion probabilistica y curvas ROC/AUC comparativas
|   |-- multiclase.py                          # Clasificacion multiclase bajo estrategia One-vs-Rest (OvR)
|   |-- PreprocesamientoDatos.py               # Preprocesamiento formal, estadistica descriptiva e imputacion
|   |-- Visualizaciones.py                     # Visualizaciones con Matplotlib, Seaborn y dispersion 3D en Plotly
|   |-- ejemploR.py                            # Fundamentos equivalentes en Python (scraping y manipulacion)
|   |-- analisis_exploratorio_eda/             # Pipeline modular de produccion en Python
|   |   |-- 01_carga_datos.py                  # Generador parametrizado con generador RNG de NumPy
|   |   |-- 02_imputacion.py                   # Algoritmos de imputacion simple, KNN y regresion lineal
|   |   |-- 03_outliers.py                     # Deteccion no parametrica IQR y tecnica de Winsorizacion
|   |   `-- Analisis_Exploratorio.py           # Modulo unificado de analisis estadistico descriptivo
|   |-- Netflix_titles/                        # Paradigma de Orientacion a Objetos (POO) y exploracion
|   |   |-- manejo_pygwalker.py                # Clase VisualizadorAvanzado con control de tipos y excepciones
|   |   `-- netflix_titles.py                  # Modulo de analisis y exploracion de catalogo
|   |-- Videojuegos/                           # Caso de estudio: Proyeccion de ventas en la industria de videojuegos
|   |   |-- vgsales.csv                        # Dataset con mas de 16,000 registros de ventas globales
|   |   |-- Python/                            # Modelos predictivos y visualizacion interactiva
|   |   `-- R/                                 # Reportes tecnicos compilados
|   |       |-- Analisis_Ventas_Kevin_Yax.qmd  # Documento de analisis reproducible en Quarto
|   |       `-- Analisis_Ventas_Kevin_Yax.pdf  # Reporte de investigacion en formato PDF
|   `-- clases_iniciales/                      # Cuadernos interactivos y scripts base en Python
|       |-- clase_3_8_26.py / .ipynb           # Exploracion grafica inicial y dispersion multidimensional
|       `-- claseR_3_8_26.qmd                  # Documento Quarto con motor de ejecucion en Jupyter
|
|-- PowerBI/                                   # Inteligencia de Negocios y Modelado Relacional
|   |-- Clase1.pbix                            # Tablero analitico de indicadores de gestion comercial
|   |-- Clase2.pbix                            # Modelo relacional avanzado de transacciones retail
|   |-- Supermercados/                         # Cargas periodicas e incrementales de ventas por sucursal
|   |-- Ventas2016.csv                         # Tabla de hechos transaccional
|   `-- Producto.xlsx                          # Tabla de dimensiones con jerarquias de producto
|
|-- Visualizaciones R/ & Python/               # Entregables formales compilados
|   |-- Analisis Exploratorio (EDA).pdf        # Compilado formal del analisis exploratorio
|   `-- Preprocesamiento de datos.pdf          # Informe metodologico de tecnicas de preprocesamiento
`-- Procesamiento Datos Python/                # Repositorio de evidencias graficas y diagramas (.png)
```

---

## Fundamentos Metodologicos

### 1. Diagnostico y Tratamiento de Valores Faltantes
El proyecto formaliza el tratamiento de datos incompletos diferenciando los mecanismos teoricos de perdida:
- **Missing Completely at Random (MCAR):** Evaluado mediante pruebas de aleatoriedad e imputacion univariada/multivariada.
- **Missing at Random (MAR):** Diagnosticado visualmente mediante matrices de co-ocurrencia (`naniar::gg_miss_var`, `missingno`). Se implementa Imputacion Multiple por Ecuaciones Encadenadas (**MICE**) con el algoritmo Predictive Mean Matching (**PMM**) en R y vecinos mas cercanos (**KNN Imputer**) en Python para preservar estructuras de covarianza y minimizar sesgos en la estimacion de la varianza muestral.

### 2. Deteccion y Mitigacion de Valores Atipicos (Outliers)
- **Criterio de Rango Intercuartilico (IQR):** Delimitacion formal de umbrales no parametricos sobre el intervalo $[Q_1 - 1.5 \cdot IQR, Q_3 + 1.5 \cdot IQR]$.
- **Winsorizacion:** Sustitucion robusta de valores ubicados en los percentiles extremos (5% inferior y 95% superior) para garantizar la convergencia y estabilidad de modelos parametricos sensibles a asimetrias severas.

### 3. Modelado Predictivo y Aprendizaje Supervisado
- **Framework Tidymodels (R):**
  - Diseno de recetas de transformacion (`recipes`): normalizacion z-score, transformaciones logaritmicas para distribuciones asimetricas y codificacion one-hot/dummy para factores categoricos.
  - Ajuste comparativo de algoritmos: Regresion Lineal penalizada, Bosques Aleatorios (`ranger`) y Gradient Boosting con Arboles de Decision (`xgboost`).
  - Serializacion estructurada de artefactos de inferencia (`.rds`).
- **Scikit-Learn (Python):**
  - Comparacion sistematica de curvas ROC (Receiver Operating Characteristic) y metrica AUC (Area Under the Curve) sobre clasificadores probabilisticos.
  - Implementacion de la estrategia One-vs-Rest (OvR) para problemas de clasificacion multiclase con calculo de curvas micro-promedio.

### 4. Inteligencia de Negocios y Analitica Descriptiva
- Modelado dimensional en estrella con tablas de hechos y dimensiones.
- Construccion de medidas analiticas (DAX) y visualizaciones dinamicas en Microsoft Power BI para monitorizacion de indicadores operacionales y comerciales.

---

## Requisitos de Entorno y Ejecucion

### Dependencias de R (>= 4.2.0)
- Manipulacion y Tuberias: `tidyverse`, `dplyr`, `tidyr`, `readr`, `readxl`, `here`
- Modelado Predictivo: `tidymodels`, `xgboost`, `ranger`, `vip`
- Imputacion y Diagnostico: `mice`, `naniar`, `VIM`
- Visualizacion y Reportes: `ggplot2`, `corrplot`, `rmarkdown`, `knitr`, `quarto`

### Dependencias de Python (>= 3.9)
- Analisis Matricial y Tabular: `numpy`, `pandas`
- Aprendizaje Automatico: `scikit-learn`
- Visualizacion de Datos: `matplotlib`, `seaborn`, `plotly`, `missingno`, `pygwalker`

### Instrucciones de Ejecucion del Pipeline Automatizado
Para ejecutar el flujo modular de preprocesamiento, imputacion y generacion de reportes en R:
```r
# Desde el directorio DataScience/clase_eda_2026/
source("run_all.R")
```
Para ejecutar el pipeline equivalente en Python:
```bash
# Desde el directorio DataSciencePython/analisis_exploratorio_eda/
python Analisis_Exploratorio.py
```
