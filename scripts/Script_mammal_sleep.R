####CARGAR EL DATASET####

mammalsleep <- read.csv("C:/Users/JANINA/Downloads/mammals.csv") #esta direccion va a depender de donde se descargue el archivo csv
#Ver los datos
View(mammalsleep)
#ver resumen
summary(mammalsleep)
#ver estructura
str(mammalsleep)

####INSTALAR PAQUETES####

install.packages("openintro")
install.packages("tidyverse")
#CARGAR LIBRERÍAS de los paquetes instalados
library(openintro)
library(tidyverse)

####LIMPIAR DATOS

#limpiar y seleccionar solamente las variables que necesitas para el análisis estadístico.
sleep_data <- mammalsleep %>%
  select(predation, total_sleep) %>%
  drop_na()
# Select sirve para sellecionar las variables con las que voy a trabajar
#variable categórica (predation) y variable numérica (total_sleep)
summary(sleep_data) #para verificar que si funciono

#### CREAR GRUPOS ####

sleep_groups <- sleep_data %>%
  filter(predation %in% c(1,2,4,5))
#Eliminamos el valor 3 porque es intermedio.
head(sleep_groups) #para verificar que s ecrearon los grupos
table(sleep_groups$predation) #cuenta cuántas veces aparece cada valor.

####CREAR VARIABLE CATEGÓRICA####

sleep_groups$grupo <- ifelse(
  sleep_groups$predation <= 2,
  "Bajo",
  "Alto"
)
# crea una nueva columna llamada grupo
table(sleep_groups$grupo) #para verificar
#esta funcion uenta cuántos mamíferos hay en cada grupo.

#### ESTADÍSTICA DESCRIPTIVA ####

#Para calcular promedio de horas de sueño, desviación estándar y número de observaciones para cada grupo
sleep_groups %>%
  group_by(grupo) %>%
  summarise(
    promedio = mean(total_sleep),
    desviacion = sd(total_sleep),
    n = n()
  )

#### BOXPLOT ####

ggplot(sleep_groups,
       aes(x = grupo,
           y = total_sleep,
           fill = grupo)) +
  
  geom_boxplot() +
  
  labs(
    title = "Horas de sueño según riesgo de depredación",
    x = "Nivel de depredación",
    y = "Horas de sueño",
    fill = "Grupo"
  ) +
  
  scale_fill_manual(values = c(
    "Bajo" = "skyblue",
    "Alto" = "tomato"
  )) +
  
  theme_minimal()

#### PRUEBA T ####

t.test(total_sleep ~ grupo,
       data = sleep_groups)
#el p-value = 0.002974 por ende rechaza H0 

   
#### HISTOGRAMA ####

ggplot(sleep_groups,
       aes(x = total_sleep,
           fill = grupo)) +
  
  geom_histogram(
    binwidth = 1,
    color = "black"
  ) +
  
  facet_wrap(~grupo) +
  
  labs(
    title = "Distribución de horas de sueño según riesgo de depredación",
    x = "Horas de sueño",
    y = "Frecuencia"
  ) +
  
  scale_fill_manual(values = c(
    "Bajo" = "skyblue",
    "Alto" = "tomato"
  )) +
  
  theme_minimal()
   
