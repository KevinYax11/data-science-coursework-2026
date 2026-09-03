# .Rprofile
cat("=== PROYECTO: Análisis Exploratorio de Datos ===\n")
cat("Cursos: Ciencia de Datos\n")
cat("Fecha:", Sys.Date(), "\n")
cat("Directorio de trabajo:", getwd(), "\n\n")

carpetas <- c("data", "scripts", "outputs", "figures")

crear_estructura <- function() {
  for (carpeta in carpetas){
    if (!dir.exists(carpeta)){
      dir.create(carpeta, recursive = TRUE)
      cat(" Carpeta creada:", carpeta, "\n")
    } else {
      cat(" Carpeta ya existe:", carpeta, "\n")
    }
  }
}

if(interactive()) {
  crear_estructura()
}  
