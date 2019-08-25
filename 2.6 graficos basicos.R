# https://www.datanalytics.com/libro_r/graficos-basicos.html

aq %>%
  group_by(Month) %>% 
  summarise(PT=mean(Temp)) %>% 
  arrange(desc(PT))

aq %>% 
  arrange(desc(Temp)) %>% 
  head(n=10)
# Representación gráfica de variables continuas: histogramas

hist(iris$Sepal.Width, main = "Histograma de la anchura de los setalos",
     xlab = "anchura del sepalo", ylab = "frecuencia",
     col = "steelblue")

# Representación gráfica de variables categóricas: barras

barplot(table(iris$Species),
        xlab = "Especie", ylab = "cant", col = "green",
        horiz = TRUE)

barplot(VADeaths[, 2], xlab = "tramos de edad", ylab = "tasa de mortalidad",
        main = "Tasa de mortalidad en Virginia\nmujer/rural")

# Representación de la relación entre dos variables continuas: 
# gráficos de dispersión

plot(cars$speed, cars$dist)

# Representa gráficamente la anchura del sépalo contra su longitud 
# (usando iris). Interpreta el gráfico.

plot(iris$Sepal.Length, iris$Sepal.Width,
     xlab = "Longitud de Sepalo", ylab = "Anchura del Sepalo"
     )

plot(airquality$Temp, type = "l")
plot(airquality$Temp)
lines(airquality$Temp)
abline(h = mean(airquality$Temp), col = "red")
?par

boxplot(iris$Sepal.Width ~ iris$Species, col = "gray",
        main = "Especies de iris\nsegún la anchura del sépalo")
  