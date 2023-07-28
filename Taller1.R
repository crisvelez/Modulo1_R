print("Hola MUNDO")
# Para obtener ayuda de cualquier función usamos

?print

# Lo podemos usar como calculadora

1+1+2+3+5+8
8-13
13*21
34*34
55/34*sqrt(89)

# Para guardar alguno de estos resultados necesitamos asignarlos a un “objeto”. Para esto podemos usar el símbolo “=” o
#“<-”

x <- 2+1
x

# Se pueden hacer operaciones directamente con los objetos
otro_numero = 55/34 * sqrt(89)
otro_numero
otro_numero*x

#para eliminar un objeto usamos rm
rm(otro_numero)
otro_numero

# Para crear un objeto con más de un elemento usamos c()
Ventas = c(1,1,2,3,5,8,13)
Ventas

#R posee un método recursivo que nos permite realizar una operación sobre el objeto múltiples veces
Ventas + 5

#También podemos usar R con funciones. Una función es una palabra seguida por paréntesis word()
sum(Ventas)
mean(Ventas)
max(Ventas)
min(Ventas)
range(Ventas)
unique(Ventas)

# Para ordenar usamos sort()
sort_increase = sort(Ventas)
sort_descrease = sort(Ventas, decreasing = TRUE)
sort_descrease

# OBJETOS Y VECTORES
frutas = c("manzana", "banana", "sandía" , "ananá" , "limón" , "frutilla" , "naranja")
names(Ventas) = frutas
Ventas

# El objeto Ventas es un vector. El vector posee múltiples elementos en una determinada posición que se indica mediante el
# empleo de los corchetes: Ventas[posición]
Ventas[3]

# Múltiples series de elementos pueden ser obtenidos al mismo tiempo. En este caso necesitamos usar c()
Ventas[c(1,3:7)]

# Y si por el contrario, queremos eliminar esos elementos:
Ventas[-c(1,5)]

# A veces queremos saber características de los números. Por ejemplo: El número de tiburones con longitud mayor a 2
# metros. Esto se puede responder con operadores relacionales (más grande que, más largo que, igual a, etc.)
# Con el objeto ventas. ¿Qué frutas se vendieron más de 5 veces?
Ventas > 5
Ventas == 5

# En el caso anterior usamos “==” para evitar asignar 5 al objeto Ventas. Como estas comparaciones nos dan vectores
# lógicos TRUE/FALSE o 1/0. Esto puede resultar muy útil para hacer algunos cálculos:
sum(Ventas>5)
Ventas[Ventas>5]

# AHORA VAMOS A HACER GRÁFICOS!!!
#   R es muy popular por la calidad y variedad de gráficas que puede generar. Una vez que los datos están en un objeto,
# graficarlo es muy simple. Por ejemplo: grafiquemos las frutas vendidas
plot(Ventas)

# Si queremos otro tipo de gráficas
barplot(Ventas)
pie(Ventas)
hist(Ventas)

# Podemos ver todas las opciones para cada tipo de gráfico usando “?”, pero sigamos con ejemplos
hist(Ventas, col = "skyblue", main = "Histograma en azul", ylab = "Frutas vendidas")

# Existen varias maneras de guardar gráficas. Por ejemplo: como pdf, pero primero definimos la carpeta de trabajo
getwd()
setwd("G:/Mi unidad/Cristian/Cristian/UNIVERSIDAD/Diplomado/Modulo 1/Modulo1 R/")
pdf("histogram.pdf")
hist(Ventas, col = "skyblue", main = "Histograma en azul", ylab = "Frutas vendidas")
dev.off()

# LECTURA DE ARCHIVOS Y MANIPULACIÓN DE TABLAS
# usemos un ejemplo más realista con el archivo “tab.txt”
tab = read.table("tab.txt")
head(tab)

# existe una forma rápida de visualizar este tipo de datos
?boxplot
boxplot(x = tab, col =c("red","green","blue"))
