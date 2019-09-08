# Author: Emily Costa
# Created on: 09/08/2019

# A scientist observes that initially a tree has 1 branch, after one month it still has only
# 1 branch, after two months it has 2 branches, and after three months it has 3 branches.
# He notes that these are the first four Fibonacci numbers– F 0 = 1, F 1 = 1, F 2 = 2, and
# F 3 = 3– and conjectures that the number of branches follows a Fibonacci sequence.
# Another scientist observes that the number of branches also obeys a cubic polynomial
# law:
# branches = P (n) = c 0 + c 1 n + c 2 n 2 + c 3 n 3 ,
# for certain coefficients c 0 , c 1 , c 2 , and c 3 . Determine the cubic polynomial P (n) that
# satisfies P (n) = F n for n = 0, 1, 2, 3.
# How might you decide which, if either, of the scientists has the correct model?

num_terms = as.integer(readline(prompt="How many terms?"))

