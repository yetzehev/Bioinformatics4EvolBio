# Básicos en R


Primeros pasos en R

Aquí hay algunas líneas de código para comenzar a familiarizarnos con R

```R
# Cualquier cosa que incluya un "#" se convertirá en un comentario
```

```R
# Lanzar el manual de auida en tu buscador
help.start()
```

```R
# VAmos a mostrar la documentación con la función 'mean'
?mean
```

```R
# Otra manera de hacerlo es a través de la función `help`
help(mean)
```

```R
# Buscar la documentación para cualquiera relacionado con la función 'plot'
help.search("plot")
```

Ahora vamos a crear objetos en R y a asignarles valores
```R
#--------------------------------------------
# Aritmética básica y asignación de objetos
#--------------------------------------------

# Vamos a asignar el valor 3 a el objeto 'x'
x <- 3
```

```R
# Ahora asignaremos el valor 4 al objeto 'y'
y <- 4
```

```R
# Vamos a mostrar el valor de 'x'
x
``` 

```R
# Mostrar el valor de 'y'
y
```

Como ahora hemos asignado valores a nuestros objetos, podemos hacer operaciones aritméticas con ellos, por ejemplo:

```R
# Esto nos arrojará el valor de x e y pero no guardará el resultado
x + y
```

Si queremos guardar el resultado, debemos crear otro objeto, por ejemplo:
```R
# Agrega x e y, almacenando el resultado en 'z'
z <- x + y
z
```

```R
#--------------------------------------------------
# Trabajando con vectores y datos estructurados
#--------------------------------------------------

# Vamos a crear un vector con cuatro elementos numéricos
x <- c(1, 5, 7, 14)
```

```R
# Mostrar el contenido dentro del vector x 
x
```
> Es importante recordar que, 'x' anteriormente tenía un valor, dado que volvimos a correr 'x' con otros valores, el objeto 'x' se sobreescribirá.

```R
# Repetir el contenido del vector dos veces
rx <- rep(x, times = 2)
rx
```
Si queremos ver las funciones de `rep()` y ver cómo se usa, podemos escribir en la consola `?rep()` para mostrar la documentación del mismo

```R
# Generar un vector con 4 números aleatorios a partir de una distribución normalGenerate a vector of 4 random numbers from a normal distribution
y <- rnorm(4)
```

```R
# Combinar los vectores x e y en una matriz, por columna
z <- cbind(x, y)
z
```
> Cuál es la dimensión de nuestra matriz?
****** incluir opciones

```R
# Crear nombres de renglones usando las primeras 4 letras minúsculas (a-d)
species <- letters[1:4]
```

```R
# Set the row names of matrix z to the species letters
row.names(z) <- species
```

```R
# View the matrix with row names
z
```

```R
#-----------------------------------------
# Understanding object structure
#-----------------------------------------

# What type of object is x?
class(x)
```

```R
# Dimensions of object x (will be NULL for a vector)
dim(x)
```

```R
# Length of x (number of elements in a vector)
length(x)
```

```R
# Dimensions of z (number of rows and columns)
dim(z)
```

```R
# Class/type of z

class(z)
```

```R
# Atributos de z (como dimensiones, nombres, etc.)
attributes(z)
```
