import numpy as np
import matplotlib.pyplot as plt
# how many times we want to plot for each r step
nplot = 100
ones = np.ones((nplot,1))
# 1600 r steps and 100 points for each step
# matrix to hold each point, restarts for each 
mat = np.zeros((nplot,1))
# iterate the solve for each r
for r in np.arange(2,4,0.005):
    # Starts us somehow to converge later
    mat[0] = 0.6
    # does first 200 iterations to converge before saving
    for n in range(1200):
        mat[0] = r*mat[0]*(1-mat[0])
    # solves next step in matrix and save previous to array
    for n in range(nplot-1):
        mat[n+1] = r*mat[n]*(1-mat[n])
    plt.scatter(r*ones,mat,s=1)
    plt.title("Bifurcation Diagram")
    plt.xlabel("r")
    plt.ylabel("x")
plt.savefig('hw4.png')
