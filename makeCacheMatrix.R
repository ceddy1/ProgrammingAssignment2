makeCacheMatrix <- function(x=matrix()) {
  j <- NULL
  set <- function(y) {
    x <<- y
    j <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) j <<- inverse
  getinverse <- function() j
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}