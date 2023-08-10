install.packages("readxl")
install.packages("dplyr")
library(readxl)
library(tidyverse)
library(datasets)
library(dplyr)

son04 <- read.csv("son04")

rm(datos)
rm(municipios_tratados)

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_16 <- son_01_16 %>%
  mutate(anio = 2016, mes = "enero")
#ardenar columnas de mes y año creadas:
son_01_16 <- son_01_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_01_16$tratado <- ifelse(son_01_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_16 <- son_01_16[, c(1, 2, ncol(son_01_16), 3:(ncol(son_01_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-02-29.csv", fileEncoding = "latin1", sep = "|")
son_02_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_16 <- son_02_16 %>%
  mutate(anio = 2016, mes = "febrero")
#ardenar columnas de mes y año creadas:
son_02_16 <- son_02_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_02_16$tratado <- ifelse(son_02_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_16 <- son_02_16[, c(1, 2, ncol(son_02_16), 3:(ncol(son_02_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_16 <- son_03_16 %>%
  mutate(anio = 2016, mes = "marzo")
#ardenar columnas creadas:
son_03_16 <- son_03_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_16$tratado <- ifelse(son_03_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_16 <- son_03_16[, c(1, 2, ncol(son_03_16), 3:(ncol(son_03_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_16 <- son_04_16 %>%
  mutate(anio = 2016, mes = "abril")
#ardenar columnas creadas:
son_04_16 <- son_04_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_16$tratado <- ifelse(son_04_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_16 <- son_04_16[, c(1, 2, ncol(son_04_16), 3:(ncol(son_04_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_16 <- son_05_16 %>%
  mutate(anio = 2016, mes = "mayo")
#ardenar columnas creadas:
son_05_16 <- son_05_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_16$tratado <- ifelse(son_05_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_16 <- son_05_16[, c(1, 2, ncol(son_05_16), 3:(ncol(son_05_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_16 <- son_06_16 %>%
  mutate(anio = 2016, mes = "junio")
#ardenar columnas creadas:
son_06_16 <- son_06_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_16$tratado <- ifelse(son_06_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_16 <- son_06_16[, c(1, 2, ncol(son_06_16), 3:(ncol(son_06_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_16 <- son_07_16 %>%
  mutate(anio = 2016, mes = "julio")
#ardenar columnas creadas:
son_07_16 <- son_07_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_16$tratado <- ifelse(son_07_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_16 <- son_07_16[, c(1, 2, ncol(son_07_16), 3:(ncol(son_07_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_16 <- son_08_16 %>%
  mutate(anio = 2016, mes = "agosto")
#ardenar columnas creadas:
son_08_16 <- son_08_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_16$tratado <- ifelse(son_08_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_16 <- son_08_16[, c(1, 2, ncol(son_08_16), 3:(ncol(son_08_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_16 <- son_09_16 %>%
  mutate(anio = 2016, mes = "septiembre")
#ardenar columnas creadas:
son_09_16 <- son_09_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_16$tratado <- ifelse(son_09_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_16 <- son_09_16[, c(1, 2, ncol(son_09_16), 3:(ncol(son_09_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_16 <- son_10_16 %>%
  mutate(anio = 2016, mes = "octubre")
#ardenar columnas creadas:
son_10_16 <- son_10_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_16$tratado <- ifelse(son_10_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_16 <- son_10_16[, c(1, 2, ncol(son_10_16), 3:(ncol(son_10_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_16 <- son_11_16 %>%
  mutate(anio = 2016, mes = "noviembre")
#ardenar columnas creadas:
son_11_16 <- son_11_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_16$tratado <- ifelse(son_11_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_16 <- son_11_16[, c(1, 2, ncol(son_11_16), 3:(ncol(son_11_16)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2016-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_16 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_16 <- son_12_16 %>%
  mutate(anio = 2016, mes = "diciembre")
#ardenar columnas creadas:
son_12_16 <- son_12_16 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_16$tratado <- ifelse(son_12_16$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_16 <- son_12_16[, c(1, 2, ncol(son_12_16), 3:(ncol(son_12_16)-1))]


#Unir los archivos:
son01 <- rbind(son_01_16,son_02_16, son_03_16, son_04_16,son_05_16,
               son_06_16,son_07_16,son_08_16,son_09_16, son_10_16,
               son_11_16,son_12_16)

colnames(son01)
colnames(son02)

#Agregar columna rango_uma a2016:
nueva_columna <- rep(NA, nrow(son01))
son01 <- cbind(son01[, 1:14], rango_uma = nueva_columna, son01[, 15:ncol(son01)])
colnames(son01)

write.csv(son_01_16, file = "son_01_16.csv")
write.csv(son_02_16, file = "son_02_16.csv")
write.csv(son_03_16, file = "son_03_16.csv")
write.csv(son_04_16, file = "son_04_16.csv")
write.csv(son_05_16, file = "son_05_16.csv")
write.csv(son_06_16, file = "son_06_16.csv")
write.csv(son_07_16, file = "son_07_16.csv")
write.csv(son_08_16, file = "son_08_16.csv")
write.csv(son_09_16, file = "son_09_16.csv")
write.csv(son_10_16, file = "son_10_16.csv")
write.csv(son_11_16, file = "son_11_16.csv")
write.csv(son_12_16, file = "son_12_16.csv")


rm(son_01_16,son_02_16, son_03_16, son_04_16,son_05_16,
   son_06_16,son_07_16,son_08_16,son_09_16, son_10_16,
   son_11_16,son_12_16)
rm(municipios_tratados)
rm(datos)
rm(nueva_columna)



#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_17 <- son_01_17 %>%
  mutate(anio = 2017, mes = "enero")
#ardenar columnas de mes y año creadas:
son_01_17 <- son_01_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_01_17$tratado <- ifelse(son_01_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_17 <- son_01_17[, c(1, 2, ncol(son_01_17), 3:(ncol(son_01_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_17 <- son_02_17 %>%
  mutate(anio = 2017, mes = "febrero")
#ardenar columnas de mes y año creadas:
son_02_17 <- son_02_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_02_17$tratado <- ifelse(son_02_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_17 <- son_02_17[, c(1, 2, ncol(son_02_17), 3:(ncol(son_02_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_17 <- son_03_17 %>%
  mutate(anio = 2017, mes = "marzo")
#ardenar columnas creadas:
son_03_17 <- son_03_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_17$tratado <- ifelse(son_03_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_17 <- son_03_17[, c(1, 2, ncol(son_03_17), 3:(ncol(son_03_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_17 <- son_04_17 %>%
  mutate(anio = 2017, mes = "abril")
#ardenar columnas creadas:
son_04_17 <- son_04_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_17$tratado <- ifelse(son_04_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_17 <- son_04_17[, c(1, 2, ncol(son_04_17), 3:(ncol(son_04_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_17 <- son_05_17 %>%
  mutate(anio = 2017, mes = "mayo")
#ardenar columnas creadas:
son_05_17 <- son_05_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_17$tratado <- ifelse(son_05_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_17 <- son_05_17[, c(1, 2, ncol(son_05_17), 3:(ncol(son_05_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_17 <- son_06_17 %>%
  mutate(anio = 2017, mes = "junio")
#ardenar columnas creadas:
son_06_17 <- son_06_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_17$tratado <- ifelse(son_06_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_17 <- son_06_17[, c(1, 2, ncol(son_06_17), 3:(ncol(son_06_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_17 <- son_07_17 %>%
  mutate(anio = 2017, mes = "julio")
#ardenar columnas creadas:
son_07_17 <- son_07_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_17$tratado <- ifelse(son_07_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_17 <- son_07_17[, c(1, 2, ncol(son_07_17), 3:(ncol(son_07_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_17 <- son_08_17 %>%
  mutate(anio = 2017, mes = "agosto")
#ardenar columnas creadas:
son_08_17 <- son_08_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_17$tratado <- ifelse(son_08_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_17 <- son_08_17[, c(1, 2, ncol(son_08_17), 3:(ncol(son_08_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_17 <- son_09_17 %>%
  mutate(anio = 2017, mes = "septiembre")
#ardenar columnas creadas:
son_09_17 <- son_09_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_17$tratado <- ifelse(son_09_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_17 <- son_09_17[, c(1, 2, ncol(son_09_17), 3:(ncol(son_09_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_17 <- son_10_17 %>%
  mutate(anio = 2017, mes = "octubre")
#ardenar columnas creadas:
son_10_17 <- son_10_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_17$tratado <- ifelse(son_10_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_17 <- son_10_17[, c(1, 2, ncol(son_10_17), 3:(ncol(son_10_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_17 <- son_11_17 %>%
  mutate(anio = 2017, mes = "noviembre")
#ardenar columnas creadas:
son_11_17 <- son_11_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_17$tratado <- ifelse(son_11_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_17 <- son_11_17[, c(1, 2, ncol(son_11_17), 3:(ncol(son_11_17)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2017-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_17 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_17 <- son_12_17 %>%
  mutate(anio = 2017, mes = "diciembre")
#ardenar columnas creadas:
son_12_17 <- son_12_17 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_17$tratado <- ifelse(son_12_17$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_17 <- son_12_17[, c(1, 2, ncol(son_12_17), 3:(ncol(son_12_17)-1))]




colnames(son_01_17)
colnames(son_02_17)

#Agregar la culumna faltante a son_01_17:
nueva_columna <- rep(NA, nrow(son_01_17))
son_01_17 <- cbind(son_01_17[, 1:14], rango_uma = nueva_columna, son_01_17[, 15:ncol(son_01_17)])
rm(nueva_columna)

#Unir los archivos:
son02 <- rbind(son_01_17,son_02_17, son_03_17, son_04_17,son_05_17,
               son_06_17,son_07_17,son_08_17,son_09_17, son_10_17,
               son_11_17,son_12_17)


write.csv(son_01_17, file = "son_01_17.csv")
write.csv(son_02_17, file = "son_02_17.csv")
write.csv(son_03_17, file = "son_03_17.csv")
write.csv(son_04_17, file = "son_04_17.csv")
write.csv(son_05_17, file = "son_05_17.csv")
write.csv(son_06_17, file = "son_06_17.csv")
write.csv(son_07_17, file = "son_07_17.csv")
write.csv(son_08_17, file = "son_08_17.csv")
write.csv(son_09_17, file = "son_09_17.csv")
write.csv(son_10_17, file = "son_10_17.csv")
write.csv(son_11_17, file = "son_11_17.csv")
write.csv(son_12_17, file = "son_12_17.csv")


rm(son_01_17,son_02_17, son_03_17, son_04_17,son_05_17,
   son_06_17,son_07_17,son_08_17,son_09_17, son_10_17,
   son_11_17,son_12_17)
rm(municipios_tratados)
rm(datos)


#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_18 <- son_01_18 %>%
  mutate(anio = 2018, mes = "enero")
#ardenar columnas de mes y año creadas:
son_01_18 <- son_01_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_01_18$tratado <- ifelse(son_01_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_18 <- son_01_18[, c(1, 2, ncol(son_01_18), 3:(ncol(son_01_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_18 <- son_02_18 %>%
  mutate(anio = 2018, mes = "febrero")
#ardenar columnas de mes y año creadas:
son_02_18 <- son_02_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos:
son_02_18$tratado <- ifelse(son_02_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_18 <- son_02_18[, c(1, 2, ncol(son_02_18), 3:(ncol(son_02_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_18 <- son_03_18 %>%
  mutate(anio = 2018, mes = "marzo")
#ardenar columnas creadas:
son_03_18 <- son_03_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_18$tratado <- ifelse(son_03_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_18 <- son_03_18[, c(1, 2, ncol(son_03_18), 3:(ncol(son_03_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_18 <- son_04_18 %>%
  mutate(anio = 2018, mes = "abril")
#ardenar columnas creadas:
son_04_18 <- son_04_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_18$tratado <- ifelse(son_04_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_18 <- son_04_18[, c(1, 2, ncol(son_04_18), 3:(ncol(son_04_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_18 <- son_05_18 %>%
  mutate(anio = 2018, mes = "mayo")
#ardenar columnas creadas:
son_05_18 <- son_05_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_18$tratado <- ifelse(son_05_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_18 <- son_05_18[, c(1, 2, ncol(son_05_18), 3:(ncol(son_05_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_18 <- son_06_18 %>%
  mutate(anio = 2018, mes = "junio")
#ardenar columnas creadas:
son_06_18 <- son_06_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_18$tratado <- ifelse(son_06_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_18 <- son_06_18[, c(1, 2, ncol(son_06_18), 3:(ncol(son_06_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_18 <- son_07_18 %>%
  mutate(anio = 2018, mes = "julio")
#ardenar columnas creadas:
son_07_18 <- son_07_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_18$tratado <- ifelse(son_07_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_18 <- son_07_18[, c(1, 2, ncol(son_07_18), 3:(ncol(son_07_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_18 <- son_08_18 %>%
  mutate(anio = 2018, mes = "agosto")
#ardenar columnas creadas:
son_08_18 <- son_08_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_18$tratado <- ifelse(son_08_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_18 <- son_08_18[, c(1, 2, ncol(son_08_18), 3:(ncol(son_08_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_18 <- son_09_18 %>%
  mutate(anio = 2018, mes = "septiembre")
#ardenar columnas creadas:
son_09_18 <- son_09_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_18$tratado <- ifelse(son_09_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_18 <- son_09_18[, c(1, 2, ncol(son_09_18), 3:(ncol(son_09_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_18 <- son_10_18 %>%
  mutate(anio = 2018, mes = "octubre")
#ardenar columnas creadas:
son_10_18 <- son_10_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_18$tratado <- ifelse(son_10_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_18 <- son_10_18[, c(1, 2, ncol(son_10_18), 3:(ncol(son_10_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_18 <- son_11_18 %>%
  mutate(anio = 2018, mes = "noviembre")
#ardenar columnas creadas:
son_11_18 <- son_11_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_18$tratado <- ifelse(son_11_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_18 <- son_11_18[, c(1, 2, ncol(son_11_18), 3:(ncol(son_11_18)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2018-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_18 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_18 <- son_12_18 %>%
  mutate(anio = 2018, mes = "diciembre")
#ardenar columnas creadas:
son_12_18 <- son_12_18 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_18$tratado <- ifelse(son_12_18$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_18 <- son_12_18[, c(1, 2, ncol(son_12_18), 3:(ncol(son_12_18)-1))]

#Unir los archivos:
son03 <- rbind(son_01_18,son_02_18, son_03_18, son_04_18,son_05_18,
               son_06_18,son_07_18,son_08_18,son_09_18, son_10_18,
               son_11_18,son_12_18)


write.csv(son_01_18, file = "son_01_18.csv")
write.csv(son_01_18, file = "son_02_18.csv")
write.csv(son_01_18, file = "son_03_18.csv")
write.csv(son_01_18, file = "son_04_18.csv")
write.csv(son_01_18, file = "son_05_18.csv")
write.csv(son_01_18, file = "son_06_18.csv")
write.csv(son_01_18, file = "son_07_18.csv")
write.csv(son_01_18, file = "son_08_18.csv")
write.csv(son_01_18, file = "son_09_18.csv")
write.csv(son_01_18, file = "son_10_18.csv")
write.csv(son_01_18, file = "son_11_18.csv")
write.csv(son_01_18, file = "son_12_18.csv")


rm(son_01_18,son_02_18, son_03_18, son_04_18,son_05_18,
   son_06_18,son_07_18,son_08_18,son_09_18, son_10_18,
   son_11_18,son_12_18)
rm(municipios_tratados)
rm(datos)

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_19 <- son_01_19 %>%
  mutate(anio = 2019, mes = "enero")
#ardenar columnas creadas:
son_01_19 <- son_01_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_01_19$tratado <- ifelse(son_01_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_19 <- son_01_19[, c(1, 2, ncol(son_01_19), 3:(ncol(son_01_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_19 <- son_02_19 %>%
  mutate(anio = 2019, mes = "febrero")
#ardenar columnas creadas:
son_02_19 <- son_02_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_02_19$tratado <- ifelse(son_02_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_19 <- son_02_19[, c(1, 2, ncol(son_02_19), 3:(ncol(son_02_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_19 <- son_03_19 %>%
  mutate(anio = 2019, mes = "marzo")
#ardenar columnas creadas:
son_03_19 <- son_03_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_19$tratado <- ifelse(son_03_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_19 <- son_03_19[, c(1, 2, ncol(son_03_19), 3:(ncol(son_03_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_19 <- son_04_19 %>%
  mutate(anio = 2019, mes = "abril")
#ardenar columnas creadas:
son_04_19 <- son_04_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_19$tratado <- ifelse(son_04_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_19 <- son_04_19[, c(1, 2, ncol(son_04_19), 3:(ncol(son_04_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_19 <- son_05_19 %>%
  mutate(anio = 2019, mes = "mayo")
#ardenar columnas creadas:
son_05_19 <- son_05_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_19$tratado <- ifelse(son_05_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_19 <- son_05_19[, c(1, 2, ncol(son_05_19), 3:(ncol(son_05_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_19 <- son_06_19 %>%
  mutate(anio = 2019, mes = "junio")
#ardenar columnas creadas:
son_06_19 <- son_06_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_19$tratado <- ifelse(son_06_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_19 <- son_06_19[, c(1, 2, ncol(son_06_19), 3:(ncol(son_06_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_19 <- son_07_19 %>%
  mutate(anio = 2019, mes = "julio")
#ardenar columnas creadas:
son_07_19 <- son_07_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_19$tratado <- ifelse(son_07_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_19 <- son_07_19[, c(1, 2, ncol(son_07_19), 3:(ncol(son_07_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_19 <- son_08_19 %>%
  mutate(anio = 2019, mes = "agosto")
#ardenar columnas creadas:
son_08_19 <- son_08_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_19$tratado <- ifelse(son_08_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_19 <- son_08_19[, c(1, 2, ncol(son_08_19), 3:(ncol(son_08_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_19 <- son_09_19 %>%
  mutate(anio = 2019, mes = "septiembre")
#ardenar columnas creadas:
son_09_19 <- son_09_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_19$tratado <- ifelse(son_09_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_19 <- son_09_19[, c(1, 2, ncol(son_09_19), 3:(ncol(son_09_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_19 <- son_10_19 %>%
  mutate(anio = 2019, mes = "octubre")
#ardenar columnas creadas:
son_10_19 <- son_10_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_19$tratado <- ifelse(son_10_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_19 <- son_10_19[, c(1, 2, ncol(son_10_19), 3:(ncol(son_10_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_19 <- son_11_19 %>%
  mutate(anio = 2019, mes = "noviembre")
#ardenar columnas creadas:
son_11_19 <- son_11_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_19$tratado <- ifelse(son_11_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_19 <- son_11_19[, c(1, 2, ncol(son_11_19), 3:(ncol(son_11_19)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2019-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_19 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_19 <- son_12_19 %>%
  mutate(anio = 2019, mes = "diciembre")
#ardenar columnas creadas:
son_12_19 <- son_12_19 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_19$tratado <- ifelse(son_12_19$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_19 <- son_12_19[, c(1, 2, ncol(son_12_19), 3:(ncol(son_12_19)-1))]

#Unir los archivos:
son04 <- rbind(son_01_19,son_02_19, son_03_19, son_04_19,son_05_19,
               son_06_19,son_07_19,son_08_19,son_09_19, son_10_19,
               son_11_19,son_12_19)

write.csv(son_01_19, file = "son_01_19.csv")
write.csv(son_02_19, file = "son_02_19.csv")
write.csv(son_03_19, file = "son_03_19.csv")
write.csv(son_04_19, file = "son_04_19.csv")
write.csv(son_05_19, file = "son_05_19.csv")
write.csv(son_06_19, file = "son_06_19.csv")
write.csv(son_07_19, file = "son_07_19.csv")
write.csv(son_08_19, file = "son_08_19.csv")
write.csv(son_09_19, file = "son_09_19.csv")
write.csv(son_10_19, file = "son_10_19.csv")
write.csv(son_011_19, file = "son_11_19.csv")
write.csv(son_012_19, file = "son_12_19.csv")

rm(son_01_19,son_02_19, son_03_19, son_04_19,son_05_19,
   son_06_19,son_07_19,son_08_19,son_09_19, son_10_19,
   son_11_19,son_12_19)

rm(municipios_tratados)
rm(datos)
rm()


#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_20 <- son_01_20 %>%
  mutate(anio = 2020, mes = "enero")
#ardenar columnas creadas:
son_01_20 <- son_01_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_01_20$tratado <- ifelse(son_01_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_20 <- son_01_20[, c(1, 2, ncol(son_01_20), 3:(ncol(son_01_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-02-29.csv", fileEncoding = "latin1", sep = "|")
son_02_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_20 <- son_02_20 %>%
  mutate(anio = 2020, mes = "febrero")
#ardenar columnas creadas:
son_02_20 <- son_02_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_02_20$tratado <- ifelse(son_02_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_20 <- son_02_20[, c(1, 2, ncol(son_02_20), 3:(ncol(son_02_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_20 <- son_03_20 %>%
  mutate(anio = 2020, mes = "marzo")
#ardenar columnas creadas:
son_03_20 <- son_03_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_20$tratado <- ifelse(son_03_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_20 <- son_03_20[, c(1, 2, ncol(son_03_20), 3:(ncol(son_03_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_20 <- son_04_20 %>%
  mutate(anio = 2020, mes = "abril")
#ardenar columnas creadas:
son_04_20 <- son_04_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_20$tratado <- ifelse(son_04_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_20 <- son_04_20[, c(1, 2, ncol(son_04_20), 3:(ncol(son_04_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_20 <- son_05_20 %>%
  mutate(anio = 2020, mes = "mayo")
#ardenar columnas creadas:
son_05_20 <- son_05_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_20$tratado <- ifelse(son_05_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_20 <- son_05_20[, c(1, 2, ncol(son_05_20), 3:(ncol(son_05_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_20 <- son_06_20 %>%
  mutate(anio = 2020, mes = "junio")
#ardenar columnas creadas:
son_06_20 <- son_06_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_20$tratado <- ifelse(son_06_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_20 <- son_06_20[, c(1, 2, ncol(son_06_20), 3:(ncol(son_06_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_20 <- son_07_20 %>%
  mutate(anio = 2020, mes = "julio")
#ardenar columnas creadas:
son_07_20 <- son_07_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_20$tratado <- ifelse(son_07_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_20 <- son_07_20[, c(1, 2, ncol(son_07_20), 3:(ncol(son_07_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_20 <- son_08_20 %>%
  mutate(anio = 2020, mes = "agosto")
#ardenar columnas creadas:
son_08_20 <- son_08_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_20$tratado <- ifelse(son_08_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_20 <- son_08_20[, c(1, 2, ncol(son_08_20), 3:(ncol(son_08_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_20 <- son_09_20 %>%
  mutate(anio = 2020, mes = "septiembre")
#ardenar columnas creadas:
son_09_20 <- son_09_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_20$tratado <- ifelse(son_09_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_20 <- son_09_20[, c(1, 2, ncol(son_09_20), 3:(ncol(son_09_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_20 <- son_10_20 %>%
  mutate(anio = 2020, mes = "octubre")
#ardenar columnas creadas:
son_10_20 <- son_10_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_20$tratado <- ifelse(son_10_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_20 <- son_10_20[, c(1, 2, ncol(son_10_20), 3:(ncol(son_10_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_20 <- son_11_20 %>%
  mutate(anio = 2020, mes = "noviembre")
#ardenar columnas creadas:
son_11_20 <- son_11_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_20$tratado <- ifelse(son_11_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_20 <- son_11_20[, c(1, 2, ncol(son_11_20), 3:(ncol(son_11_20)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2020-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_20 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_20 <- son_12_20 %>%
  mutate(anio = 2020, mes = "diciembre")
#ardenar columnas creadas:
son_12_20 <- son_12_20 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_20$tratado <- ifelse(son_12_20$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_20 <- son_12_20[, c(1, 2, ncol(son_12_20), 3:(ncol(son_12_20)-1))]


#Unir los archivos:
son05 <- rbind(son_01_20,son_02_20, son_03_20, son_04_20,son_05_20,
               son_06_20,son_07_20,son_08_20,son_09_20, son_10_20,
               son_11_20,son_12_20)
#grabar cvs por mes:
write.csv(son_01_20, file = "son_01_20.csv")
write.csv(son_02_20, file = "son_02_20.csv")
write.csv(son_03_20, file = "son_03_20.csv")
write.csv(son_04_20, file = "son_04_20.csv")
write.csv(son_05_20, file = "son_05_20.csv")
write.csv(son_06_20, file = "son_06_20.csv")
write.csv(son_07_20, file = "son_07_20.csv")
write.csv(son_08_20, file = "son_08_20.csv")
write.csv(son_09_20, file = "son_09_20.csv")
write.csv(son_10_20, file = "son_10_20.csv")
write.csv(son_11_20, file = "son_11_20.csv")
write.csv(son_12_20, file = "son_12_20.csv")

rm(son_01_20,son_02_20, son_03_20, son_04_20,son_05_20,
   son_06_20,son_07_20,son_08_20,son_09_20, son_10_20,
   son_11_20,son_12_20)

rm(municipios_tratados)
rm(datos)
rm()
#grabar csv por año:
write.csv(son01, file = "son01.csv")
write.csv(son01, file = "son02.csv")
write.csv(son03, file = "son03.csv")
write.csv(son04, file = "son04.csv")
write.csv(son05, file = "son05.csv")

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_21 <- son_01_21 %>%
  mutate(anio = 2021, mes = "enero")
#ardenar columnas creadas:
son_01_21 <- son_01_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_01_21$tratado <- ifelse(son_01_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_21 <- son_01_21[, c(1, 2, ncol(son_01_21), 3:(ncol(son_01_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_21 <- son_02_21 %>%
  mutate(anio = 2021, mes = "febrero")
#ardenar columnas creadas:
son_02_21 <- son_02_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_02_21$tratado <- ifelse(son_02_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_21 <- son_02_21[, c(1, 2, ncol(son_02_21), 3:(ncol(son_02_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_21 <- son_03_21 %>%
  mutate(anio = 2021, mes = "marzo")
#ardenar columnas creadas:
son_03_21 <- son_03_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_21$tratado <- ifelse(son_03_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_21 <- son_03_21[, c(1, 2, ncol(son_03_21), 3:(ncol(son_03_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_21 <- son_04_21 %>%
  mutate(anio = 2021, mes = "abril")
#ardenar columnas creadas:
son_04_21 <- son_04_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_21$tratado <- ifelse(son_04_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_21 <- son_04_21[, c(1, 2, ncol(son_04_21), 3:(ncol(son_04_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_21 <- son_05_21 %>%
  mutate(anio = 2021, mes = "mayo")
#ardenar columnas creadas:
son_05_21 <- son_05_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_21$tratado <- ifelse(son_05_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_21 <- son_05_21[, c(1, 2, ncol(son_05_21), 3:(ncol(son_05_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_21 <- son_06_21 %>%
  mutate(anio = 2021, mes = "junio")
#ardenar columnas creadas:
son_06_21 <- son_06_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_21$tratado <- ifelse(son_06_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_21 <- son_06_21[, c(1, 2, ncol(son_06_21), 3:(ncol(son_06_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_21 <- son_07_21 %>%
  mutate(anio = 2021, mes = "julio")
#ardenar columnas creadas:
son_07_21 <- son_07_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_21$tratado <- ifelse(son_07_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_21 <- son_07_21[, c(1, 2, ncol(son_07_21), 3:(ncol(son_07_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_21 <- son_08_21 %>%
  mutate(anio = 2021, mes = "agosto")
#ardenar columnas creadas:
son_08_21 <- son_08_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_21$tratado <- ifelse(son_08_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_21 <- son_08_21[, c(1, 2, ncol(son_08_21), 3:(ncol(son_08_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_21 <- son_09_21 %>%
  mutate(anio = 2021, mes = "septiembre")
#ardenar columnas creadas:
son_09_21 <- son_09_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_21$tratado <- ifelse(son_09_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_21 <- son_09_21[, c(1, 2, ncol(son_09_21), 3:(ncol(son_09_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_21 <- son_10_21 %>%
  mutate(anio = 2021, mes = "octubre")
#ardenar columnas creadas:
son_10_21 <- son_10_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_21$tratado <- ifelse(son_10_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_21 <- son_10_21[, c(1, 2, ncol(son_10_21), 3:(ncol(son_10_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_21 <- son_11_21 %>%
  mutate(anio = 2021, mes = "noviembre")
#ardenar columnas creadas:
son_11_21 <- son_11_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_21$tratado <- ifelse(son_11_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_21 <- son_11_21[, c(1, 2, ncol(son_11_21), 3:(ncol(son_11_21)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2021-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_21 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_21 <- son_12_21 %>%
  mutate(anio = 2021, mes = "diciembre")
#ardenar columnas creadas:
son_12_21 <- son_12_21 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_21$tratado <- ifelse(son_12_21$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_21 <- son_12_21[, c(1, 2, ncol(son_12_21), 3:(ncol(son_12_21)-1))]

#Unir los archivos:
son06 <- rbind(son_01_21,son_02_21, son_03_21, son_04_21,son_05_21,
               son_06_21,son_07_21,son_08_21,son_09_21, son_10_21,
               son_11_21,son_12_21)

#grabar cvs por mes:
write.csv(son_01_21, file = "son_01_21.csv")
write.csv(son_02_21, file = "son_02_21.csv")
write.csv(son_03_21, file = "son_03_21.csv")
write.csv(son_04_21, file = "son_04_21.csv")
write.csv(son_05_21, file = "son_05_21.csv")
write.csv(son_06_21, file = "son_06_21.csv")
write.csv(son_07_21, file = "son_07_21.csv")
write.csv(son_08_21, file = "son_08_21.csv")
write.csv(son_09_21, file = "son_09_21.csv")
write.csv(son_10_21, file = "son_10_21.csv")
write.csv(son_11_21, file = "son_11_21.csv")
write.csv(son_12_21, file = "son_12_21.csv")

rm(son_01_21,son_02_21, son_03_21, son_04_21,son_05_21,
   son_06_21,son_07_21,son_08_21,son_09_21, son_10_21,
   son_11_21,son_12_21)

rm(municipios_tratados)
rm(datos)
rm()



#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_22 <- son_01_22 %>%
  mutate(anio = 2022, mes = "enero")
#ardenar columnas creadas:
son_01_22 <- son_01_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_01_22$tratado <- ifelse(son_01_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_22 <- son_01_22[, c(1, 2, ncol(son_01_22), 3:(ncol(son_01_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_22 <- son_02_22 %>%
  mutate(anio = 2022, mes = "febrero")
#ardenar columnas creadas:
son_02_22 <- son_02_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_02_22$tratado <- ifelse(son_02_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_22 <- son_02_22[, c(1, 2, ncol(son_02_22), 3:(ncol(son_02_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_22 <- son_03_22 %>%
  mutate(anio = 2022, mes = "marzo")
#ardenar columnas creadas:
son_03_22 <- son_03_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_22$tratado <- ifelse(son_03_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_22 <- son_03_22[, c(1, 2, ncol(son_03_22), 3:(ncol(son_03_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_22 <- son_04_22 %>%
  mutate(anio = 2022, mes = "abril")
#ardenar columnas creadas:
son_04_22 <- son_04_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_22$tratado <- ifelse(son_04_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_22 <- son_04_22[, c(1, 2, ncol(son_04_22), 3:(ncol(son_04_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_22 <- son_05_22 %>%
  mutate(anio = 2022, mes = "mayo")
#ardenar columnas creadas:
son_05_22 <- son_05_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_22$tratado <- ifelse(son_05_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_22 <- son_05_22[, c(1, 2, ncol(son_05_22), 3:(ncol(son_05_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_22 <- son_06_22 %>%
  mutate(anio = 2022, mes = "junio")
#ardenar columnas creadas:
son_06_22 <- son_06_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_22$tratado <- ifelse(son_06_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_22 <- son_06_22[, c(1, 2, ncol(son_06_22), 3:(ncol(son_06_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_22 <- son_07_22 %>%
  mutate(anio = 2022, mes = "julio")
#ardenar columnas creadas:
son_07_22 <- son_07_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_22$tratado <- ifelse(son_07_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_22 <- son_07_22[, c(1, 2, ncol(son_07_22), 3:(ncol(son_07_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_22 <- son_08_22 %>%
  mutate(anio = 2022, mes = "agosto")
#ardenar columnas creadas:
son_08_22 <- son_08_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_22$tratado <- ifelse(son_08_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_22 <- son_08_22[, c(1, 2, ncol(son_08_22), 3:(ncol(son_08_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_22 <- son_09_22 %>%
  mutate(anio = 2022, mes = "septiembre")
#ardenar columnas creadas:
son_09_22 <- son_09_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_22$tratado <- ifelse(son_09_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_22 <- son_09_22[, c(1, 2, ncol(son_09_22), 3:(ncol(son_09_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_22 <- son_10_22 %>%
  mutate(anio = 2022, mes = "octubre")
#ardenar columnas creadas:
son_10_22 <- son_10_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_22$tratado <- ifelse(son_10_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_22 <- son_10_22[, c(1, 2, ncol(son_10_22), 3:(ncol(son_10_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_22 <- son_11_22 %>%
  mutate(anio = 2022, mes = "noviembre")
#ardenar columnas creadas:
son_11_22 <- son_11_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_22$tratado <- ifelse(son_11_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_22 <- son_11_22[, c(1, 2, ncol(son_11_22), 3:(ncol(son_11_22)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2022-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_22 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_22 <- son_12_22 %>%
  mutate(anio = 2022, mes = "diciembre")
#ardenar columnas creadas:
son_12_22 <- son_12_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_22$tratado <- ifelse(son_12_22$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_22 <- son_12_22[, c(1, 2, ncol(son_12_22), 3:(ncol(son_12_22)-1))]

#Unir los archivos:
son07 <- rbind(son_01_22,son_02_22, son_03_22, son_04_22,son_05_22,
               son_06_22,son_07_22,son_08_22,son_09_22, son_10_22,
               son_11_22,son_12_22)

#grabar cvs por mes:
write.csv(son_01_22, file = "son_01_22.csv")
write.csv(son_02_22, file = "son_02_22.csv")
write.csv(son_03_22, file = "son_03_22.csv")
write.csv(son_04_22, file = "son_04_22.csv")
write.csv(son_05_22, file = "son_05_22.csv")
write.csv(son_06_22, file = "son_06_22.csv")
write.csv(son_07_22, file = "son_07_22.csv")
write.csv(son_08_22, file = "son_08_22.csv")
write.csv(son_09_22, file = "son_09_22.csv")
write.csv(son_10_22, file = "son_10_22.csv")
write.csv(son_11_22, file = "son_11_22.csv")
write.csv(son_12_22, file = "son_12_22.csv")

rm(son_01_22,son_02_22, son_03_22, son_04_22,son_05_22,
   son_06_22,son_07_22,son_08_22,son_09_22, son_10_22,
   son_11_22,son_12_22)

rm(municipios_tratados)
rm(datos)
rm()


#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-01-31.csv", fileEncoding = "latin1", sep = "|")
son_01_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_01_23 <- son_01_23 %>%
  mutate(anio = 2023, mes = "enero")
#ardenar columnas creadas:
son_01_23 <- son_01_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_01_23$tratado <- ifelse(son_01_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_01_23 <- son_01_23[, c(1, 2, ncol(son_01_23), 3:(ncol(son_01_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-02-28.csv", fileEncoding = "latin1", sep = "|")
son_02_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_02_23 <- son_02_23 %>%
  mutate(anio = 2023, mes = "febrero")
#ardenar columnas creadas:
son_02_23 <- son_02_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_02_23$tratado <- ifelse(son_02_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_02_23 <- son_02_23[, c(1, 2, ncol(son_02_23), 3:(ncol(son_02_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-03-31.csv", fileEncoding = "latin1", sep = "|")
son_03_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_03_23 <- son_03_23 %>%
  mutate(anio = 2023, mes = "marzo")
#ardenar columnas creadas:
son_03_23 <- son_03_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_03_23$tratado <- ifelse(son_03_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_03_23 <- son_03_23[, c(1, 2, ncol(son_03_23), 3:(ncol(son_03_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-04-30.csv", fileEncoding = "latin1", sep = "|")
son_04_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_04_23 <- son_04_23 %>%
  mutate(anio = 2023, mes = "abril")
#ardenar columnas creadas:
son_04_23 <- son_04_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_04_23$tratado <- ifelse(son_04_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_04_23 <- son_04_23[, c(1, 2, ncol(son_04_23), 3:(ncol(son_04_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-05-31.csv", fileEncoding = "latin1", sep = "|")
son_05_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_05_23 <- son_05_23 %>%
  mutate(anio = 2023, mes = "mayo")
#ardenar columnas creadas:
son_05_23 <- son_05_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_05_23$tratado <- ifelse(son_05_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_05_23 <- son_05_23[, c(1, 2, ncol(son_05_23), 3:(ncol(son_05_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-06-30.csv", fileEncoding = "latin1", sep = "|")
son_06_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_06_23 <- son_06_23 %>%
  mutate(anio = 2023, mes = "junio")
#ardenar columnas creadas:
son_06_23 <- son_06_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_06_23$tratado <- ifelse(son_06_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_06_23 <- son_06_23[, c(1, 2, ncol(son_06_23), 3:(ncol(son_06_23)-1))]

#Corregir columnas para febrero del 23:
colnames(son_02_23)[1] <- "cve_delegacion"
colnames(son_02_23)[8] <- "tamaño_patron"
colnames()

colnames(son_01_23)
colnames(son_02_23)
colnames(son_03_23)
colnames(son_04_23)
colnames(son_05_23)
colnames(son_06_23)

#Unir los archivos:
son08 <- rbind(son_01_23,son_02_23, son_03_23, son_04_23,son_05_23,
               son_06_23)


#grabar cvs por mes:
write.csv(son_01_23, file = "son_01_23.csv")
write.csv(son_02_23, file = "son_02_23.csv")
write.csv(son_03_23, file = "son_03_23.csv")
write.csv(son_04_23, file = "son_04_23.csv")
write.csv(son_05_23, file = "son_05_23.csv")
write.csv(son_06_23, file = "son_06_23.csv")

write.csv(son_07_23, file = "son_07_23.csv")
write.csv(son_08_23, file = "son_08_23.csv")
write.csv(son_09_23, file = "son_09_23.csv")
write.csv(son_10_23, file = "son_10_23.csv")
write.csv(son_11_23, file = "son_11_23.csv")
write.csv(son_12_23, file = "son_12_23.csv")

rm(son_01_23,son_02_23, son_03_23, son_04_23,son_05_23,
   son_06_23)

rm(municipios_tratados)
rm(datos)

#grabar csv por año:
write.csv(son06, file = "son06.csv")
write.csv(son07, file = "son07.csv")
write.csv(son08, file = "son08.csv")






#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-07-31.csv", fileEncoding = "latin1", sep = "|")
son_07_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_07_23 <- son_07_23 %>%
  mutate(anio = 2023, mes = "julio")
#ardenar columnas creadas:
son_07_22 <- son_07_22 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_07_23$tratado <- ifelse(son_07_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_07_23 <- son_07_23[, c(1, 2, ncol(son_07_23), 3:(ncol(son_07_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-08-31.csv", fileEncoding = "latin1", sep = "|")
son_08_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_08_23 <- son_08_23 %>%
  mutate(anio = 2023, mes = "agosto")
#ardenar columnas creadas:
son_08_23 <- son_08_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_08_23$tratado <- ifelse(son_08_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_08_23 <- son_08_23[, c(1, 2, ncol(son_08_23), 3:(ncol(son_08_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-09-30.csv", fileEncoding = "latin1", sep = "|")
son_09_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_09_23 <- son_09_23 %>%
  mutate(anio = 2023, mes = "septiembre")
#ardenar columnas creadas:
son_09_23 <- son_09_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_09_23$tratado <- ifelse(son_09_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_09_23 <- son_09_23[, c(1, 2, ncol(son_09_23), 3:(ncol(son_09_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-10-31.csv", fileEncoding = "latin1", sep = "|")
son_10_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_10_23 <- son_10_23 %>%
  mutate(anio = 2023, mes = "octubre")
#ardenar columnas creadas:
son_10_23 <- son_10_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_10_23$tratado <- ifelse(son_10_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_10_23 <- son_10_23[, c(1, 2, ncol(son_10_23), 3:(ncol(son_10_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-11-30.csv", fileEncoding = "latin1", sep = "|")
son_11_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_11_23 <- son_11_23 %>%
  mutate(anio = 2023, mes = "noviembre")
#ardenar columnas creadas:
son_11_23 <- son_11_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_11_23$tratado <- ifelse(son_11_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_11_23 <- son_11_23[, c(1, 2, ncol(son_11_23), 3:(ncol(son_11_23)-1))]

#Abrir csv bajado de imss y filtrado de datos para Sonora:
datos <- read.csv("asg-2023-12-31.csv", fileEncoding = "latin1", sep = "|")
son_12_23 <- subset(datos, cve_entidad == 26)
#agregar identificador mes y año:
son_12_23 <- son_12_23 %>%
  mutate(anio = 2023, mes = "diciembre")
#ardenar columnas creadas:
son_12_23 <- son_12_23 %>%
  select(anio, mes, everything())
#agregar identificador a municipios tratados:
## Crear un vector con los códigos de municipios tratados
municipios_tratados <- c("E56", "E57", "E59", "H18", "Q03", "E68", "E70", "E71", "X46", "X24", "Y44")
## Agregar una columna "tratado" a la base de datos son_01_16
son_12_23$tratado <- ifelse(son_12_23$cve_municipio %in% municipios_tratados, 1, 0)
### reorganizar las columnas:
son_12_23 <- son_12_23[, c(1, 2, ncol(son_12_23), 3:(ncol(son_12_23)-1))]

#Unir los archivos:
son08 <- rbind(son_01_23,son_02_23, son_03_23, son_04_23,son_05_23,
               son_06_23,son_07_23,son_08_23,son_09_23, son_10_23,
               son_11_23,son_12_23)

#grabar cvs por mes:
write.csv(son_01_23, file = "son_01_23.csv")
write.csv(son_02_23, file = "son_02_23.csv")
write.csv(son_03_23, file = "son_03_23.csv")
write.csv(son_04_23, file = "son_04_23.csv")
write.csv(son_05_23, file = "son_05_23.csv")
write.csv(son_06_23, file = "son_06_23.csv")
write.csv(son_07_23, file = "son_07_23.csv")
write.csv(son_08_23, file = "son_08_23.csv")
write.csv(son_09_23, file = "son_09_23.csv")
write.csv(son_10_23, file = "son_10_23.csv")
write.csv(son_11_23, file = "son_11_23.csv")
write.csv(son_12_23, file = "son_12_23.csv")

rm(son_01_21,son_02_21, son_03_21, son_04_21,son_05_21,
   son_06_21,son_07_21,son_08_21,son_09_21, son_10_21,
   son_11_21,son_12_21)

rm(municipios_tratados)
rm(datos)
rm()

son <- rbind(son01,son02,son03,son04,son05,son06,son07,
             son08)

write.csv(son, file = "son.csv")

#Agregar columna vacía a la base de datos enero 2017:
son_01_16 <- cbind(son_01_17, rango_uma = NA)
son_01_16 <- cbind(son_01_17[, 1:11], rango_uma = NA, son_01_17[, 12:ncol(son_01_17)])
son_01_16 <- subset(son_01_17, select = -c(30))

colnames(son01)
colnames(son02)
son01 <- cbind(son01[, c(1:3, 5:(ncol(son01)-1), 4)], son01[, 4])

# Crear la columna "rango_uma" con valores NA
son01$rango_uma <- NA

# Reorganizar las columnas para que "rango_uma" esté en la posición 15
son01 <- son01[, c(1:14, ncol(son01), 15:(ncol(son01)-1))]

# Verificar que la columna se haya agregado correctamente
head(son_01_17)



# Calcular los porcentajes para el tratamiento (masa salarial asociada a puestos de trabajo afiliados)
son <- son %>%
  mutate(porcentaje_masa_sal_ta = masa_sal_ta / sum(masa_sal_ta) * 100)

# Calcular los porcentajes para la variable resultado (número de puestos de trabajo afiliados)
son <- son %>%
  mutate(porcentaje_ta = ta / sum(ta) * 100)

# Calcular los porcentajes para las variables de control (edad, rango salarial, sexo, sector económico)
son <- son %>%
  group_by(rango_edad) %>%
  mutate(porcentaje_edad = n() / sum(n()) * 100) %>%
  ungroup() %>%
  group_by(rango_salarial) %>%
  mutate(porcentaje_rango_salarial = n() / sum(n()) * 100) %>%
  ungroup() %>%
  group_by(sexo) %>%
  mutate(porcentaje_sexo = n() / sum(n()) * 100) %>%
  ungroup() %>%
  group_by(sector_economico_1) %>%
  mutate(porcentaje_sector_economico_1 = n() / sum(n()) * 100) %>%
  ungroup()

# Verifica tus datos
head(son)
colnames(son)
#Guardarlos en csv:
write.csv(son, file = "son.csv")
#AHora filtrado para la industria en Sonora:
indus_son <- subset(son, sector_economico_1 %in% c(2,3))
write.csv(indus_son, file= "indus_son.csv")

