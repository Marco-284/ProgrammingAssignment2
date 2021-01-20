## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix do have set, get, setInverse, getInverse
##Utilize the function that sets the matrix and its inverse in an environment
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function
## This is used to get the cache data and solves the inverse of the matrix

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
  
        ## Return a matrix that is the inverse of 'x'
}
