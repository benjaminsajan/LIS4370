data(mtcars)
head(mtcars)
list(mtcars)
isS4(mtcars)

#Creating S3 object
s <- list(name = "John", age = 21, GPA = 3.5)
class(s) <- "student"
s

#Creating S4 object
setClass("boy", slots = list(name = "character", age = "numeric", GPA = "numeric"))
L <- new(Class = "boy", name = "John", age = 21, GPA = 3.5)
L