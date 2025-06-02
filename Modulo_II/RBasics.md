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
# Brings up documentation for the function 'mean'
?mean
```

```R
# Same as above, alternative syntax
help(mean)
```

```R
# Searches documentation for anything related to "plot"
help.search("plot")
```

```R
#-----------------------------------------
# Basic arithmetic and object assignment
#-----------------------------------------

# Assigns the value 3 to the object 'x'
x <- 3
```

```R
# Assigns the value 4 to the object 'y'
y <- 4
```

```R
# Prints the value of 'x'
x
``` 

```R
# Prints the value of 'y'
y
```

```R
# Adds x and y but does not store the result
x + y
```

```R
# Adds x and y, stores the result in 'z'
z <- x + y
```

```R
#-----------------------------------------
# Working with vectors and data structures
#-----------------------------------------

# Create a vector with four numeric elements
x <- c(1, 5, 7, 14)
```

```R
# Display the contents of vector x
x
```

```R
# Repeat the contents of vector x twice
rx <- rep(x, times = 2)
rx
```

```R
# Generate a vector of 4 random numbers from a normal distribution
y <- rnorm(4)
```

```R
# Combine vectors x and y into a matrix, column-wise
z <- cbind(x, y)
```

```R
# Create row names from the first four lowercase letters (a-d)
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
