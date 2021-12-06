throws<-34
expectedSixs<-3
simulations<-10000000
got<-0
for(i in 1:simulations){
  n_six<-0
  v<-runif(throws,0,6)
  for(vi in v){
    if(vi>5){
      n_six<-n_six+1
      if(n_six==expectedSixs){
        got<-got+1
        break  
      }
    }
  }
}
cat(sprintf("Simulointeja %d: todennäköisyys %.3f %%",
            simulations,got/simulations*100))