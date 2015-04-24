cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if(!is.null(j)) {
    message("getting cached data.")
    return(j)
  }
  data <- x$get()
  j <- solve(data)
  x$setinverse(j)
  j
}