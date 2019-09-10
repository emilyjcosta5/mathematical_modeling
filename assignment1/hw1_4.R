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

print('The following problems are done with ten iterations.')
print('a. ')
a(10)
print('b. ')
b(10)
print('c. ')
c(10)
print('d. ')
d(10)

# Run by using the following Linux command: Rscript hw1_4.R

# Output:
# [1] "The following problems are done with ten iterations."
# [1] "a. "
#  [1]    2.0000    5.0000   12.5000   31.2500   78.1250  195.3125  488.2812
#  [8] 1220.7031 3051.7578 7629.3945
# [1] "b. "
#  [1]     3.0000     9.0000    24.0000    61.5000   155.2500   389.6250
#  [7]   975.5625  2440.4062  6102.5156 15257.7891
# [1] "c. "
#  [1]     1.0000     2.0000     5.5000    16.2500    48.6250   145.8125
#  [7]   437.4062  1312.2031  3936.6016 11809.8008
# [1] "d. "
#  [1]     1.0000     2.0000     7.5000    26.2500    85.6250   269.3125
#  [7]   831.1562  2538.0781  7701.5391 23277.2695

