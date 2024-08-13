## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Create "special matrix" to cache the value of the inverse, including:
  ## 1. assign initial value of the inverse as NULL
  ## 2. set and get the value of matrix
  ## 3. set the value of the inverse
  ## 4. get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
 set <- function(y) {
   x <<- y
   inv <<- NULL
 }
 get <- function() x
 setinverse <- function(inverse) inv <<- inverse
 getinverse <- function() inv
 list(set = set, get = get, setinverse = setinverse, getinv = getinverse)
}


## Write a short comment describing this function
## Solve the inverse including:
  ## 1. Check to see if the inverse has been already calculated
  ## 2. If the value is NULL, calculate and cache in the above "special vector"
  ## 3. If the value is not NULL, extract the value from it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
  inv
}

