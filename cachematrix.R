## Put comments here that give an overall description of what your
## functions do

## This is a code of the function. The input data is a matrix, and output is a list, which cosists of 4 functions. 

makeCacheMatrix <- function(x = matrix()) {
        	i <- NULL
        	set <- function(y) {
                	x <<- y
                	i <<- NULL
        	}
        	get <- function() x
        	setinverse <- function(inverse) i <<- inverse
        	getinverse <- function() i
        	list(set = set, get = get,
             	setinverse = setinverse,
             	getinverse = getinverse)
}


## This is the code of function. If the inverse matrix has not been calculated, then it calculates the inverse 
   and cache it, if the inverse matrix has already calculated then returns it from cached data.

cacheSolve <- function(x, ...) {
              i <- x$getinverse()
               if(!is.null(i)) {
               message("getting cached data")
               return(i)
               }
              data <- x$get()
              i <- solve(data, ...)
              x$setinverse(i)
              i
}
