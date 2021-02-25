# Create a function to print squares of numbers in sequence.
newfunction <- function(a) {
   for(i in 1:a) {
      b <- i^2
      print(b)
   }
}

newfunction(7)

print("###################")
# Create a function without an argument.
newfunction_2 <- function() {
   for(i in 1:5) {
      print(i^2)
   }
}	

# Call the function without supplying an argument.
newfunction_2()


print("########3477###########")


# Create a function with arguments.
newfunction_3 <- function(a = 3, b = 6) {
   result <- a * b
   print(result)
}

# Call the function without giving any argument.
newfunction_3()

newfunction_3(9,5)


pow <- function(x, y = 2) {
# function to print x raised to the power y
result <- x^y
print(paste(x,"raised to the power", y, "is", result))
}

pow(3)
pow(3,1)

print("########347$$$7###########")

my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))

print("########34&&&&&&77###########")

my_function <- function(x)
 {
     print(5 * x)
}

my_function(3)
my_function(5)
my_function(9)