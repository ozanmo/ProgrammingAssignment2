## makeCacheMatrix cashes the inverse of a matrix
## cacheSolve computes or (if known) retrieves the inverse 



## makeCacheMatrix creates a special matrix object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
}
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve computes the inverse of the matrix returned by makeCacheMatrix. 
## If the inverse is known (and the matrix has not changed),
## it retrieves the inverse from the cache.
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m				
}