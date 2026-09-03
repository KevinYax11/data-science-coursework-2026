# scripts/00_instalar_paquetes.R
#Ejecuta este script solo UNA VEZ para instalar todos los paquetes

paquetes_necesarios <- c(
  # Manipulación y visualización
  "tidyverse",
  "ggplot2",
  "dplyr",
  "tidyr",
  
  # Datos Faltantes y Análisis
  "naniar",
  "VIM",
  "mice",
  "psych",
  
  # Reportes
  "rmarkdown",
  "knitr"
)

paquetes_nuevos <- paquetes_necesarios[!(paquetes_necesarios %in% installed.packages()[,"Package"])]
if(length(paquetes_nuevos)) install.packages(paquetes_nuevos)