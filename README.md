# Proyecto colaborativo GitHub + Rstudio: Prueba t en mamíferos (sueño y depredación)
# Nombres: Nadia Obando y Rubí García 
# Introducción  
El proyecto utiliza una base de datos real de mamíferos obtenida desde OpenIntro Data Sets para evaluar relaciones ecológicas mediante una prueba estadística t.

# Pregunta de investigación
¿Existe una diferencia significativa en las horas de sueño total de los mamíferos entre aquellos con alta depredación y aquellos con baja depredación?

## Datos
La base de datos utilizada proviene de OpenIntro Data Sets:
- Dataset: mammals
- Fuente: OpenIntro Data Sets
- Formato: CSV
El dataset contiene información biológica de diferentes especies de mamíferos, incluyendo variables relacionadas con sueño y depredación.

# Variables utilizadas
sueño total (sleep_total)
depredación (predation): variable numérica asociada al nivel de depredación
Grupo de depredación- variable categórica creada para el análisis, con dos niveles:
  - Baja depredación
  - Alta depredación
Para construir los grupos, se utilizó la mediana de la variable de depredación como punto de corte.

# Hipótesis nula (H0)
No existe diferencia significativa en el promedio de horas de sueño total entre mamíferos con baja y alta depredación.

# Hipótesis alternativa (H₁)
Existe una diferencia significativa en el promedio de horas de sueño total entre mamíferos con baja y alta depredación.

# Metodos
Se aplicó una prueba t de dos muestras independientes para comparar el promedio de horas de sueño total entre dos grupos.
El análisis estadístico se realizó en RStudio e incluyó
1. Importación del dataset
2. Limpieza básica (eliminación de valores faltantes NA)
3. Creación de una variable categórica de depredación (baja/alta)
4. Estadística descriptiva: se calcularon por grupo 
5. Prueba t de Student para dos muestras independientes

# Resultados
*El análisis descriptivo mostró que los mamíferos con alta depredación presentaron un promedio de sueño de 8.43 horas (DE = 4.25; n = 19), mientras que los mamíferos con baja depredación tuvieron un promedio mayor de 12.40 horas (DE = 4.20; n = 29). Estos resultados sugieren que los mamíferos con menor riesgo de depredación tienden a dormir más horas.
*La prueba t de dos muestras independientes mostró diferencias estadísticamente significativas entre mamíferos con alta y baja depredación t=−3.1725, p=0.002974<0.05, por lo que se rechazó la hipótesis nula (H₀) y se aceptó la hipótesis alternativa (H₁), concluyendo que sí existe una diferencia significativa en las horas de sueño total entre ambos grupos de mamíferos.
*El intervalo de confianza al 95 % para la diferencia de medias se encontró entre -6.49 y -1.44 horas, lo que respalda la existencia de diferencias reales entre los grupos analizados.
