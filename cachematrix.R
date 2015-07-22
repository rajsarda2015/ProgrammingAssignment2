##"makeCacheMatrix"function creates a special "matrix" object which inverses and 
## caches it. It can be called by functions outside this environment using the "lexical
## scoping" rules of R.
makeCacheMatrix <- function(x = matrix()) {
  s<-NULL{
  set<-function(y) 
    x<<-y  
    s<<-NULL
}
get<-function() x
setmatrix<-function(solve) s<<-solve
getmatrix<-function() n
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}
## "cacheSolve" function computes the inverse of the special "matrix" created above.
## If the matrix has not changed, it will retrieve and return the inverse from the cache.

cacheSolve <- function(x, ...) {
  s<-x$getmatrix()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  data<-x$get()
  s<-solve(data,...)
  x$setmatrix(s)
  s ## Return a matrix that is the inverse of 'x'
}
        
  
  
  
  
  

