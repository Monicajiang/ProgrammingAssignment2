##This pair of functions are used to calculate the inverse of a matrix. They make the process less time-consuming by caching the inverse
##of the matrix rather than computing them repeatedly

##this function is used to create a special matrix and caches its inverse

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set<-function(y){
     x<<-y
     i<<-NULL
}
get<-function()x
setinverse<-function(inverse) i<<-inverse
getinverse<-function() i
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## it retrieves the inverse of the matrix created before if its inverse has been calulated,otherwise it will calculate the inverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<-x$getinverse()
        if(!is.null(i)){
        message("getting cached data")
        return(i)
}
data<-x$get()
i<-inverse(data,...)
x$setinverse(i)
i
}
