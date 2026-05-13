# Proyecto colaborativo GitHub + Rstudio: Prueba t en mamíferos (sueño y depredación)
## Nombres: Nadia Obando y Rubí García 
## Introducción  
El proyecto utiliza una base de datos real de mamíferos obtenida desde OpenIntro Data Sets para evaluar relaciones ecológicas mediante una prueba estadística t.

## Pregunta de investigación
¿Existe una diferencia significativa en las horas de sueño total de los mamíferos entre aquellos con alta depredación y aquellos con baja depredación?

## Datos
La base de datos utilizada proviene de OpenIntro Data Sets:
- Dataset: mammals
- Fuente: OpenIntro Data Sets
- Formato: CSV
El dataset contiene información biológica de diferentes especies de mamíferos, incluyendo variables relacionadas con sueño y depredación.

## Variables utilizadas
total_sleep: horas de sueño total (variable numérica)
predation: variable asociada al riesgo o nivel de depredación (variable numérica)
Posteriormente, se creó una variable categórica llamada `grupo` con dos niveles::
  - Baja- riesgo de depredación
  - Alta- riesgo de depredación
La clasificación se realizó usando un punto de corte (por ejemplo la mediana del riesgo de depredación), para dividir a las especies en dos grupos comparables.

## Hipótesis nula (H0)
No existe diferencia significativa en el promedio de horas de sueño total entre mamíferos con baja y alta depredación.

## Hipótesis alternativa (H₁)
Existe una diferencia significativa en el promedio de horas de sueño total entre mamíferos con baja y alta depredación.

## Metodos
### Estadística descriptiva
Se calcularon estadísticas descriptivas por grupo (Bajo y Alto):
- tamaño de muestra (n)
- promedio de horas de sueño (mean)
- desviación estándar (sd)

Estas estadísticas permitieron resumir la tendencia central y variabilidad del sueño en cada grupo.

### Visualización
Se generaron gráficos para explorar los datos:

- **Boxplot** - para comparar la distribución de horas de sueño entre grupos.
- **Histogramas** - separados por grupo para observar la forma de la distribución.

### Prueba estadística (t-test)
Para evaluar si existían diferencias significativas en las horas de sueño entre los dos grupos, se aplicó una **prueba t de Student para dos muestras independientes**, usando la función t.test() en R.
Se utilizó un nivel de significancia de α = 0.05.

## Resultados
Los análisis estadísticos realizados en RStudio mostró que los mamíferos con alta depredación presentaron un promedio de sueño de 8.43 horas (DE = 4.25; n = 19), mientras que los mamíferos con baja depredación tuvieron un promedio mayor de 12.40 horas (DE = 4.20; n = 29). Estos resultados sugieren que los mamíferos con menor riesgo de depredación tienden a dormir más horas.
Por otro lado la prueba t de dos muestras independientes mostró diferencias estadísticamente significativas entre mamíferos con alta y baja depredación t=−3.1725, p=0.002974<0.05, por lo que se rechazó la hipótesis nula (H₀) y se aceptó la hipótesis alternativa (H₁), concluyendo que sí existe una diferencia significativa en las horas de sueño total entre ambos grupos de mamíferos. El intervalo de confianza al 95 % para la diferencia de medias se encontró entre -6.49 y -1.44 horas, lo que respalda la existencia de diferencias reales entre los grupos analizados.

<img width="537" height="240" alt="boxplot_sleep" src="https://github.com/user-attachments/assets/62fb86ce-61a6-4475-875e-778eeceab4f0" />

Figura 1:Distribución de las horas de sueño total en mamíferos con alta y baja depredación.

El boxplot muestra la distribución de las horas de sueño total entre mamíferos con alta y baja depredación. Se observa que los mamíferos con baja depredación presentan una tendencia a mayores horas de sueño en comparación con aquellos con alta depredación, además de diferencias en la dispersión de los datos.

<img width="537" height="240" alt="Histogram_sleep" src="https://github.com/user-attachments/assets/14136fcb-4cc5-4d2e-a1f4-17158c709041" />

Figura 2. Distribución de frecuencias de las horas de sueño total según el nivel de depredación en mamíferos.

El histograma representa la frecuencia de las horas de sueño total en mamíferos con alta y baja depredación. Se evidencia una mayor concentración de valores altos de sueño en el grupo con baja depredación, mientras que el grupo con alta depredación presenta una mayor concentración en valores intermedios y bajos.

Los resultados obtenidos sugieren que el nivel de depredación puede influir en los patrones de sueño de los mamíferos. Los mamíferos con baja depredación presentaron un promedio significativamente mayor de horas de sueño en comparación con aquellos con alta depredación. 
Desde una perspectiva biológica, esto podría explicarse como una adaptación ecológica y conductual. Los mamíferos expuestos a un mayor riesgo de depredación probablemente necesiten permanecer más alertas y vigilantes frente a posibles amenazas, reduciendo así el tiempo dedicado al sueño. En contraste, los mamíferos con menor presión de depredación pueden invertir más tiempo en el descanso y recuperación energética.



