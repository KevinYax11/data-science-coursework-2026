# Data Science Coursework 2026

Repositorio de prácticas, clases y proyectos de **Ciencia de Datos** y **Análisis Exploratorio de Datos (EDA)** por **Kevin Yax**.

---

## 📋 Contenido del Repositorio

### 1. Sesiones y Clases Prácticas
- **`9_7_26.R`**: Introducción práctica a R (tipos de datos, vectores, operaciones básicas).
- **`graficas13_7_26.R`**: Visualización de datos básica y avanzada utilizando `ggplot2`.
- **`clase_27_7_26.Rmd`** / **`clase_27_7_26.html`**: Análisis exploratorio de supervivencia sobre el dataset del **Titanic** (R Base, tablas de contingencia y `ggplot2`).
- **`clase_3_8_26.ipynb`** / **`clase_3_8_26.py`**: Manipulación de datos y gráficos interactivos y multivariados en Python (`pandas`, `seaborn`, `plotly`).
- **`claseR_3_8_26.qmd`**: Cuaderno Quarto con integración de análisis exploratorio.
- **`clase_6_8_26.qmd`**: Simulación y comparación de datasets sintéticos en R y Python.
- **`EDA.qmd`**: Documento exhaustivo en Quarto sobre técnicas de imputación y análisis exploratorio bilingüe (R y Python).

### 2. Proyecto Modular de EDA (`clase-eda-2026/`)
- **`00-instalar-paquetes.R`**: Script para comprobación e instalación automática de paquetes requeridos.
- **`00-setup-entorno.R`**: Configuración del entorno de trabajo y creación automática de estructura de directorios (`data/`, `scripts/`, etc.).
- **`01-carga-datos.R`**: Generación sintética de datos con mecanismos de valores perdidos (MCAR, MAR) y outliers.
- **`02_imputacion_R.R`**: Métodos de imputación (mediana, modelo de regresión lineal, MICE multivariado).
- **`03_outliers_R.R`**: Detección de atípicos con regla IQR y tratamiento mediante técnica de *winsorización*.
- **`informe_eda.qmd`**: Reporte técnico en Quarto para consolidar el pipeline de EDA.

---

## 🛠️ Requisitos y Tecnologías

- **R** (>= 4.2)
  - Paquetes: `tidyverse`, `ggplot2`, `dplyr`, `tidyr`, `mice`, `naniar`, `VIM`, `psych`, `here`, `rmarkdown`, `knitr`, `corrplot`.
- **Python** (>= 3.9)
  - Bibliotecas: `pandas`, `numpy`, `matplotlib`, `seaborn`, `plotly`, `scikit-learn`, `missingno`.
- **Quarto CLI** (para renderizar documentos `.qmd`).
