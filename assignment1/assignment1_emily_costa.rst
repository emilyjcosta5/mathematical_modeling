Assignment 1
------------
Author: Emily Costa

Created on: 08/17/2019
~~~~~~~~~~~~~~~~~~~~~~~

**1** 

Crystallographic structures are a microscopic mathematical phenomena. A scanning probe is necessary to capture their structures. Though there is noise collected in the data, pseudo-symmetries can be analyzed mathematically once the noise is filtered. I would imagine the analytical approach to classification of the crystallographic images into space groups would require linear algebra. This analysis actually presents a big issue to the materials science community, as the analytical approach is extremely computationally heavy. Nowdays, scientists are working on resolving this problem by leveraging and improving machine learning techniques. 

Another example would be the study of the polarization of political parties in a bipartisan state. This falls under the field of complexity, as the systems require nonlinear mathematical modeling. To model this phenomena, differential equations are used. 

**2** 

**Steps for solving cubic polynomial.**
1. Set P(n) = f_n
2. Create a system of equations
   f_0 = P(0) = c_0                       = 1
   f_1 = P(1) = c_0 + c_1  + c_2  + c_3   = 1
   f_2 = P(2) = c_0 + 2c_1 + 4c_2 + 8c_3  = 2
   f_3 = P(3) = c_0 + 3c_1 + 9c_2 + 27c_3 = 3
3. From this system, plug into a matrix.
   [[1, 0, 0, 0,  1]
    [1, 1, 1, 1,  1]
    [1, 2, 4, 8,  2]
    [1, 3, 9, 27, 3]]
3. Now, convert matrix to reduced row echelon form to solve for "variables".
   [[1, 0, 0, 0, 1   ]
    [0, 1, 0, 0, -5/6]
    [0, 0, 1, 0, 1   ]
    [0, 0, 0, 1, -1/6]]
4. Finally, plug in constants, now known, into the original equation.
   P(n) = 1 - (5/6)n + n^2 - (1/6)n^3

**Do the scientists have the correct model?**
The first scientist does potentially have the correct model, as he observed a logical growth of the branches. 
However, the second scientist does not have the correct model. This is because the variable of the highest order has a negative coefficient, so eventually the model will predict a negative number of branches, which is impossible. For example, if you set n = 7, P(n=7) = -13.

**3**

1.
  i.   Solve for the total estate by finding the first and second sons' inheritance. Let x represent the total of the estate.
  (a) First son: 1+(x-1)/7
  (b) Leftover inheritance from first son: x-(1+(x-1)/7) = (6/7)(x-1)
  (c) Second son: 2+(((b)-2)/7)2+(1/7)((6/7)(x-1)-2) = (6/7)((x/7)+(13/7))
  ii.  Set the two equations, (a) and (c), equal to each other and solve for x. We get that x = 36, or the total estate is 36 bezants.
  iii. Now, to figure out how many sons, we figure out the size of the first son's inheritance then divide the total estate by that number (as it is divided equally).
  First son: 1+(36-1)/7 = 6 bezants
  Total sons: 36/6 = 6 total sons

2.
  a. As the Golden Ratio can be expressed as x = 1 + 1/x, we can continuously plug in x to the right hand side as such:
  phi = 1+(1/(1+1/(1+1/1+1/...)))

  1 + 1
     ---
    1 + 1
       ---
      1 + 1
         ---
        1 + 1
           ---
           ...

  b. sqrt(2) can be expressed as x = 2 + 1/x, so we can also continuously plus in x to the right hand side as suchL
  sqrt(2) = 2+(1/(2+1/(2+1/(2+1/...))))

  2 + 1
     ---
    2 + 1
       ---
      2 + 1
         ---
        2 + 1
           ---
           ...

3.
  i.   Let x be equivalent to theta.
  Then, r = a*e^(b*x)
  ii.  Take the derivative of r with respect to x.
  dr/dx = b*a*e^(b*x)
  so,
  dr/dx = b*r
  iii. By deduction from the picture, We can find:
  cot(w) = dr/ds
  iv.  We know ds = r*(dx) because s = r*x and we can differentiate.
  v.   Combining (iii.) and (iv.), we find:
  cot(w) = dr/(r*dx)
  vi.  By rewriting and integrating (v.), we find:
  ln(r) = cot(w)*x + C
  vii. From (vi.), we raise both sides to power of e and rewrite:
  r = e^(b*x)*C
  vii. Let a be an arbitrary constant, so (vii.) can be rewritten as:
  r = a*e^(b*x), which is the expected equation at the beginning.

**4**

a. 2x_n - 5x_(n-1) = 0 , x_0 = 2

  i.   Make equation for next iteration:
  2x_(n+1) = 5x_n
  ii.  Solve:
  (5/2)x_n = x_(n+1) = (5/2)^(n+1)*x_0 = (5/2)(((5/2)^2)*x_0)
  iii. So, we get:
  x_n = 2*(5/2)^n

  Solution: x_n = 2*(5/2)^n

b. 2q_n - 5q_(n-1) = 3 , q_0 = 3

  i.   Plug into the inhomogenous difference equation:
  x_n = a^n*x_0 + c((a^n-1)/(a-1))
  c = 3/2
  a = 5/2
  x_0 = q_0 = 3
  ii.  Reduce equation:
  x_n = ((5/2)^n)*3 + (3/2)*(((5/2)^n)-1)/(3/2)

  Solution: q_n = 4*(5/2)^n - 1

c. 2q_(n+1) - 7q_n + 3q_(n-1) = 0 , q_0 = 1 , q_1 = 2

  i.   Rewrite equation:
  q_(n+2) - (7/2)q_(n+1) + (3/2)q_n = 0
  ii.  As b^2 - 4c > 0, the equation has two different real roots:
  (-7/2)^2 - 4(3/2) = 49/4 - 24/4 = 25/4
  iii. Create auxiliary equation:
  r^2 - (7/2)*r + 3/2
  iv.  Solve for r:
  r = (1/2), 3
  v.   Create a system of equations:
  1 = c_1 + c_2
  2 = 3c_1 + (1/2)c_2
  vi.  Solve for the constants:
  c_1 = 3/5
  c_2 = 2/5
  vii. Plug into this equation:
  q_n = c_1*3^n + c_2*(1/2)^n

  Solution: q_n = (3/5)*3^n + (2/5)(1/2)^n

d. 2q_(n+1) - 7q_n + 3q_(n-1) = 2 + 2^n , q_0 = 1 , q_1 = 2

  i.   Create auxiliary equation:
  2x^2 - 7x + 3 = 0
  ii.  Factor the equation:
  (2x-1)(x-3) = 0
  iii. Solve for x:
  x = (1/2), 3
  iv.  Create a system of equations and solve to get the general equation:
  y(0) = 1 =
  y(1) = 2 =
  v.   Find the equation for the particular solution and plug into original equation:
  q_n = 2A + B*2^n
  2(2A+B*2^n)-7(2*A+B*2^(n-1))+3(2A+B2^(n-2)) = 2 + 2^n
  vi. Solve for A and B to find final solution:
  A = -1
  B = -4/3
  
  Solution: q_n = -2-(4/3)(2^n)
  


