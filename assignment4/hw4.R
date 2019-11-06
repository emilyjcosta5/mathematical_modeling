bifurcation <- function(){
  # how many times we want to plot for each r step
  nplot = 100
  ones = matrix(1,nplot,1)
  # all the r's we will be running
  r = seq(from=3.900,to=4,by=0.005)
  # 1600 r steps and 100 points for each step
  all = array(0,c((length(r)-1),nplot))
  # iterate the solve for each r
  for(a in seq(length(r)-1)){
    #for(a in seq(10)){
    # matrix to hold each point, restarts for each r
    mat = matrix(0,nplot,1)
    # Starts us somehow to converge later
    mat[1] = 0.6
    # does first 200 iterations to converge before saving
    for(n in seq(800)){
      mat[1] = r[a]*mat[1]*(1-mat[1])
    }
    # solves next step in matrix and save previous to array
    for(n in seq(nplot-1)){
      mat[n+1] = r[a]*mat[n]*(1-mat[n])
      print(r[a])
      print(n)
      print(mat[n])
      all[r[a],n] = mat[n]
    }
    #for(n in seq(plot-1)){}
  }
  #print(all)
  jpeg(file="hw4.jpeg")
  ones = matrix(1,nplot,length(r))
  print(length(r)-1)
  print(r*ones[])
  print(all[r-1])
  plot(r*ones, all[r],type="p")
}

bifurcation()
  
