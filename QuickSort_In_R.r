quick_sort<-function(x) {
    if(length(x)<=1) return(x)

    pivot <- x[1]
    rest <- x[-1]
    pivot_less <- quick_sort(rest[rest<pivot])
    pivot_greater <- quick_sort(rest[rest>=pivot])
    return(c(pivot_less,pivot,pivot_greater))
}

print(quick_sort(c(5,4,12,13,3,8,88)))
