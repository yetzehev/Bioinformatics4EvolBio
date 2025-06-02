# Básicos en R


Primeros pasos en R

Aquí hay algunas líneas de código para comenzar a familiarizarnos con R

```R
# Cualquier cosa que incluya un "#" se convertirá en un comentario
```

### Ayuda en R

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

### Crear objetos en R y a asignarles valores


#### Aritmética básica y asignación de objetos

```R
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


### Trabajando con vectores y datos estructurados

```R
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

```R
# Crear nombres de renglones usando las primeras 4 letras minúsculas (a-d)
species <- letters[1:4]
```

```R
# Establezca los nombres de fila de la matriz z en las letras de la especie
row.names(z) <- species
```

```R
# Ver la matriz con nombres de filas
z
```

### Entendiendo la estructura de los objetos

Qué tipo de objeto es 'x'?

```R
class(x)
```

Dimensiones del objeto 'x' (será `NULL` para un vector)
```R
dim(x)
```
> Cuál es la dimensión de nuestra matriz 'z'?
****** incluir opciones

Longitud/tamaño de 'x' (número de elementos en un vector)
```R
length(x)
```

Clase/tipo de 'z'
```R
class(z)
```

Atributos de z (como dimensiones, nombres, etc.)
```R
attributes(z)
```
