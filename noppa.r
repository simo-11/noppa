throws<-34
expectedSixs<-3
simulations<-100000000
got<-0
for(i in 1:simulations){
  v<-runif(throws,0,6)
  if(length(v[v>5])>=3){
    got<-got+1
  }
  if(i%%100000==0){
    cat(sprintf("\rSimulointeja % 8d: todennäköisyys %.4f %%",
              i,got/i*100))
  }
}
