## Hi, makeCacheMatrix function, takes in matrix as argument and returns
## both the input argument and inverse of that matrix as a list
## //It also assigns the input argument to global variable getmatrix//

## casheSolve takes martrix as argument, compares it with input in makeCasheMatrix
## If it is same as makeCasheMatrix input, it returns inverse of that matrix which is cached 
## else it calculates the inverse and returns it


makeCacheMatrix = function(x=matrix()) {
  getmatrix <<- x
  matrixinv <<- solve(x)
  return(list(getmatrix,matrixinv))
}

cacheSolve = function(y = matrix()) {
  z= identical(y,getmatrix)
  if (z== TRUE)
  { message ("getting cached data")
    return(matrixinv) }
  else
  { return(solve(y))}
  
}