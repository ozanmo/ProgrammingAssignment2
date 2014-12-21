## Put comments here that give an overall description of what your
## functions do



## makeCacheMatrix creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}





## cacheSolve computes the inverse of the matrix returned by makeCacheMatrix. 
## If the inverse is known (and the matrix has not changed),
## it retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
	

solve(x)					#compute inverse
}
