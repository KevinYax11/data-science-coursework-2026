# run_all.R
# Script principal que ejecuta todo el análisis

cat("=== INICIANDO ANÁLISIS EXPLORATORIO ===\n")
cat("Fecha:", as.character(Sys.time()), "\n\n")

# Resolver directorio base
directorio_base <- if (file.exists("00_instalar_paquetes.R")) {
  "."
} else if (file.exists("scripts/00_instalar_paquetes.R")) {
  "scripts"
} else {
  "."
}

# 1. Instalar paquetes (si es necesario)
cat("Paso 1: Verificando paquetes...\n")
archivo_00 <- file.path(directorio_base, "00_instalar_paquetes.R")
source(archivo_00)

# 2. Generar datos
cat("\nPaso 2: Generando datos...\n")
archivo_01 <- if (file.exists(file.path(directorio_base, "01_cargar_datos.R"))) {
  file.path(directorio_base, "01_cargar_datos.R")
} else {
  file.path(directorio_base, "01_carga_datos.R")
}
source(archivo_01)

# 3. Imputación
cat("\nPaso 3: Aplicando imputación...\n")
archivo_02 <- file.path(directorio_base, "02_imputacion_r.R")
source(archivo_02)

# 4. Outliers
cat("\nPaso 4: Detectando y tratando outliers...\n")
archivo_03 <- file.path(directorio_base, "03_outliers_r.R")
source(archivo_03)

# 5. Generar informe
cat("\nPaso 5: Generando informe...\n")
archivo_informe <- if (file.exists("informe_eda.qmd")) {
  "informe_eda.qmd"
} else if (file.exists("reports/informe_eda.qmd")) {
  "reports/informe_eda.qmd"
} else {
  file.path(directorio_base, "informe_eda.qmd")
}

if (requireNamespace("quarto", quietly = TRUE)) {
  quarto::quarto_render(archivo_informe)
  cat("\n ANÁLISIS COMPLETADO\n")
  cat(" Informe generado en:", sub("\\.qmd$", ".html", archivo_informe), "\n")
} else {
  cat("\n Análisis completado. Renderizado pendiente de Quarto CLI.\n")
}