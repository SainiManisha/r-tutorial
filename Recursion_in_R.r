recur_factorial <- function(N)
{
if (N == 0)
return(1)
else{
return( N * recur_factorial (N-1))
}
}
# calling a fuction in R
recur_factorial(5)
