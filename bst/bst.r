# Initialisation of Binary Search Tree Node
node.new <- function(data) {
    node <- list(data=data, left=NA, right=NA)
    class(node) <- "Node"
    return(node)
}

# Insertion of Data to Binary Search Tree
node.put <- function(node, data) {
    if (data < node$data) {
       if(is.na(node$left)) {
           node$left <- node.new(data)
       }
       else {
           # RECURSION
           node$left <- node.put(node$left, data)
       }
    }
    else {
        if(is.na(node$right)) {
           node$right <- node.new(data)
       }
       else {
           # RECURSION
           node$right <- node.put(node$right, data)
       }
    }
    return(node)
}

# In-order Traversal of Data in Binary Search Tree
node.inorder <- function(node) {
    if(!is.na(node$left)) {
        # RECURSION
        node.inorder(node$left)
    }
    print(node$data)
    if(!is.na(node$right)) {
        # RECURSION
        node.inorder(node$right)
    }
}

# Pre-order Traversal of Data in Binary Search Tree
node.preorder <- function(node) {
    print(node$data)
    if(!is.na(node$left)) {
        node.preorder(node$left)
    }
    if(!is.na(node$right)) {
        node.preorder(node$right)
    }
}

# Post-order Traversal of Data in Binary Search Tree
node.postorder <- function(node) {
    if(!is.na(node$left)) {
        node.postorder(node$left)
    }
    if(!is.na(node$right)) {
        node.postorder(node$right)
    }
    print(node$data)
}

# example of init, insertion
x <- node.new(10)
x <- node.put(x, 15)
x <- node.put(x, 32)
x <- node.put(x, 21)
x <- node.put(x, 1)
x <- node.put(x, -1)
x <- node.put(x, 0)
# example of inorder traversal
node.inorder(x)
