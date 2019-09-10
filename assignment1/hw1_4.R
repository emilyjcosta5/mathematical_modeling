# Author: Emily Costa
# Created on: 09/08/2019
# Solving difference equations

# a. 2x n − 5x n−1 = 0, x 0 = 2.
a <- function(iterations){
        n <- seq(from=0,to=iterations-1,by=1)
        x <- numeric(length(n))
        x[1] = 2
        for(a in seq_len(length(n)-1)){
  	        x[a+1] <- (5/2)*x[a]
        }
        print(x)
}

# b. 2q n − 5q n−1 = 3, q 0 = 3.
b <- function(iterations){
	n <- seq(from=0,to=iterations-1,by=1)
	q <- numeric(length(n))
	q[1] = 3
	for(a in seq_len(length(n)-1)){
		q[a+1] = (3/2) + ((5/2)*q[a])
        }
	print(q)
}

# c. 2q n+1 − 7q n + 3q n−1 = 0, q 0 = 1, q 1 = 2.
c <- function(iterations){
	n <- seq(from=0,to=iterations-1,by=1)
	q <- numeric(length(n))
	q[1] = 1
	q[2] = 2
	for(a in seq_len(length(n)-2)){
		q[a+2] = ((7/2)*q[a+1]) - ((3/2)*q[a])
        }
	print(q)
}

# d. 2q n+1 − 7q n + 3q n−1 = 2 + 2 n , q 0 = 1, q 1 = 2.
d <- function(iterations){
	n <- seq(from=0,to=iterations-1,by=1)
	q <- numeric(length(n))
	q[1] = 1
	q[2] = 2
	for(a in seq_len(length(n)-2)){
		q[a+2] = ((7/2)*q[a+1]) - ((3/2)*q[a]) + (2**a/2) + 1
	}
	print(q)
}

a(10)
b(10)
c(10)
d(10)
