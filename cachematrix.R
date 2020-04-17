## Put comments here that give an overall description of what your
## functions do
# my function is inverse square matrix
## Write a short comment describing this function
# makeCacheMatrix function help to retrieve value of inverse matrix and matrix that store in memory
makeCacheMatrix <- function(x = matrix()) {
  v<-NULL
  set<-function(h){
    x<<-h
    v<<-NULL
  }
  get<-function(){
    x
  }
  getinverse<-function(){
    v
  }
  setinverse<-function(inverse){
    v<<-inverse
  }
  list(get=get,set=set,getinverse=getinverse,setinverse=setinverse)

}


## Write a short comment describing this function
# that retrieve inverse of matrix if exist or calculate it 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  v<-x$getinverse
  if(!is.null(v)){
    message("getting inverse of matrix")
    return(v)
  }
  data<-x$get
  v<-solve(data)
  x$setinverse(v)
  v
}
