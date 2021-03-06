## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      mi<-NULL
      set<-function(y){
            x<<-y
            mi<<-NULL
      }
      get<-function()x
      setinverse<-function(minverse)
            mi<<-minverse
      getinverse<-function()mi
      
      list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inverse<-x$getinverse()
      if(!is.null(inverse))
            return(inverse)
      x_mat<-x$get()
      inverse<-solve(x_mat)
      x$setinverse(inverse)
      inverse
}
