#define a function that contains a matrix as an argument
#we could determine if the deteminant of the matix exists.  
#if it doesn't then the inverse does not exists eith
makeCacheMatrix <- function(x = matrix())
{
   inv <- NULL
   set <- function(y)
          {
		x <<- y
		inv <<- NULL
	  }
	get <- function() {x}
	#This function returns the inverse of a square matrix computed using the R function solve.
	#l tried changing the 'inverse' function to 'solve', both 'solve' & 'solve()'"
	#but this didn't work and gave slightly different errors
  	setInverse <- function(inverse)inv <<- inverse
 	getInverse <- function() {inv}
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


#Testing makeCacheMatrix
#x = rbind(c(1,-1/4), c(-1/4, 1))
#m = makeCacheMatrix(x)
#m$get()


#The following function inverts the matrix created with the above function. 
#However, it first checks to see if the inverse has already been calculated. 
#If so, it gets the inverse from the cache and skips the computation. 
#Otherwise, it calculates the inverse of the data and sets the value of 
#the inverse in the cache via the 'solve' function.
cacheSolve <- function(x)
{
   #does the inverse of 'x' already exist?
   #'x' is an argument of getInverse()
   inv <- x$getInverse()
   if(!is.null(inv))
   {	
	message("getting cached data.")
	return(inv)
   }
	#get the matrix
	data <- x$get()
	#invert it
	inv <- solve(data)
	x$setInverse(inv)
	inv
}

#Testing the cacheSolve Function
#cacheSolve(m)
#cacheSolve(m)
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
