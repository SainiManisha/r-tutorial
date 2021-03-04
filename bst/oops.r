# S3 Class - OOPs in R
x <- list(studentName = "Harry Potter", studentAge = 19, studentContact="London")
class(x) <- "Student"
x

# S4 Class - OOPs in R
setClass("employee", slots=list(name="character", id="numeric", contact="character"))
obj <- new("employee", name="Steven", id=1002, contact="West Avenue")
obj

# class Node {
#     int data;
#     Node left;
#     Node right;
# }

node <- list(data=10, left=NA, right=NA)
class(node) <- "node"

node$left <- list(data=5, left=NA, right=NA)
class(node$left) <- "node"

node$right <- list(data=15, left=NA, right=NA)
class(node$right) <- "node"

#.   10
#.   /\
#.  5 15