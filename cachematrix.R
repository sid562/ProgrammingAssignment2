## The following two functions cache the inverse of a matrix
## The first function creates a cache and the second matrix calulates the inverse 

## The following function creates an object inv that can cache the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
                    inv <- NULL
					set <- function(y){
						x <<- y
						inv <<- NULL
					}
					get <- function() x
					setinverse <- function(inverse) inv <<- inverse
					getinverse <- function() inv
					list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## The following function first checks if the inverse of a matrix is cached. If the inverse is cached it returns the incerse value, 
## else the function calculates the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse()
		if(!is.null(inv)){
				message("getting cached data")
				return(inv)
		}
		data <- x$get()
		inv <- solve(data, ...)
		x$setinverse(inv)
		inv
}
