## Write a short comment describing this function

#Use function solve() for inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) { 
  
#Set the value of the matrix
  
      i <- NULL 
      set <- function(y) { 
      x <<- y 
      i <<- NULL 
} 
      
#get the value of the matrix     
      get <- function() x 

#set the value of the inverse matrix      
      setinverse <- function(inverse) i <<- inverse 
      
#get the value of the inverse matrix      
      getinverse <- function() i 
      list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
} 

## Write a short comment describing this function

## Assumption that the matrix can always be inverted 
cacheSolve <- function(x, ...) { 
      
      i <- x$getinverse() 
##aplly if condition to check whether inverse has been already calculated
      if(!is.null(i)) { 
        
##Display message to involve user that the inverted value is pulled from cache 
      message("getting cached data.") 
      return(i) 
  } 
      data <- x$get() 
      i <- solve(data) 
      x$setinverse(i) 
      i 
} 