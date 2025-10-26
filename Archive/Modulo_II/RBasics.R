# Básicos en R
#Primeros pasos en R
#Aquí hay algunas líneas de código para comenzar a familiarizarnos con R,
#Para esta sección, utilizaremos las paqueterías base de R

# Cualquier cosa que incluya un "#" se convertirá en un comentario

#==========================
#       Ayuda en R
#==========================

# Lanzar el manual de auida en tu buscador
help.start()

# VAmos a mostrar la documentación con la función 'mean'
?mean

# Otra manera de hacerlo es a través de la función `help`
help(mean)

# Buscar la documentación para cualquiera relacionado con la función 'plot'
help.search("plot")

#===================================================
#     Crear objetos en R y a asignarles valores
#===================================================

#### Aritmética básica y asignación de objetos

# Vamos a asignar el valor 3 a el objeto 'x'
x <- 3

# Ahora asignaremos el valor 4 al objeto 'y'
y <- 4

# Vamos a mostrar el valor de 'x'
x

# Mostrar el valor de 'y'
y

# Como ahora hemos asignado valores a nuestros objetos, 
# podemos hacer operaciones aritméticas con ellos, por ejemplo:

# Esto nos arrojará el valor de x e y pero no guardará el resultado
x + y

#Si queremos guardar el resultado, debemos crear otro objeto, por ejemplo:
# Agrega x e y, almacenando el resultado en 'z'
z <- x + y
z

#===================================================
# Trabajando con vectores y datos estructurados
#===================================================

# Vamos a crear un vector con cuatro elementos numéricos
x <- c(1, 5, 7, 14)

# Mostrar el contenido dentro del vector x 
x

# Es importante recordar que, 'x' anteriormente tenía un valor, 
# dado que volvimos a correr 'x' con otros valores, el objeto 'x' se sobreescribirá.

# Repetir el contenido del vector dos veces
rx <- rep(x, times = 2)
rx

# Si queremos ver las funciones de `rep()` y ver cómo se usa, 
# podemos escribir en la consola `?rep()` para mostrar la documentación del mismo

# Generar un vector con 4 números aleatorios a partir de una distribución normal
y <- rnorm(4)

# Combinar los vectores x e y en una matriz, por columna
z <- cbind(x, y)
z

# Crear nombres de renglones usando las primeras 4 letras minúsculas (a-d)
species <- letters[1:4]

# Establezca los nombres de fila de la matriz z en las letras de la especie
row.names(z) <- species

# Ver la matriz con nombres de filas
z

#===================================================
#     Entendiendo la estructura de los objetos
#===================================================

#Qué tipo de objeto es 'x'?
class(x)

#Dimensiones del objeto 'x' (será `NULL` para un vector)
dim(x)

#Cuál es la dimensión de nuestra matriz 'z'?


#Longitud/tamaño de 'x' (número de elementos en un vector)
length(x)

#Clase/tipo de 'z'
class(z)

#Atributos de z (como dimensiones, nombres, etc.)
attributes(z)

