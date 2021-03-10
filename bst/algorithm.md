# Object

```
node $ data
node $ left
node $ right
```

# Algorithm - Insert

```
insert(node, new_data)
    # compare node $ data, "new_data"
    if new_data < node $ data
        new_data is smaller then existing
        CASE 1: Left Insertion
    else
        new_data is bigger then existing
        CASE 2: Right Insertion
```


**CASE 1: (Insertion on Left)**
```
a) if node $ left == na
    when it is nil
    **create new node and insert it**
b) else
    when it is not nil
    ...recurse(node$left)
```
    
**CASE 2: (Insertion on Right)**
```
a) if node $ right == na
    when it is nil
    **create new node and insert it**
b) else
    when it is not nil
    ...recurse(node$right)
```

# Algorithm - Inorder Traversal

```
inorder_traversal(node)
    if node $ left != na
        ...recurse(node$left)
    
    print node $ data

    if node $ right != na
        ...recurse(node$right)
```

# Algorithm - Preorder Traversal

```
preorder_traversal(node)
    print node $ data

    if node $ left != na
        ...recurse(node$left)

    if node $ right != na
        ...recurse(node$right)
```

# Algorithm - Postorder Traversal

```
postorder_traversal(node)
    if node $ left != na
        ...recurse(node$left)

    if node $ right != na
        ...recurse(node$right)
    
    print node $ data
```
