v<-list()
v=c(10,1.25,2.5)
u<-list()
u=c(12,2,5)
P0=c()
for(i in 1:3){
P0=c(P0,(1-(v[i]/u[i])))}
Lq=c()
for(i in 1:3){
Lq=c(Lq,(v[i]*v[i])/(u[i]*(u[i]-v[i])))}
Wq=c()
for(i in 1:3){
Wq=c(Wq,Lq[i]/v[i])}
Wq=Wq*60
Ws=c()
for(i in 1:3){
Ws=c(Ws,Wq[i]+(1/u[i]))}
Ws=Ws*60
Pw=c()
for(i in 1:3){
Pw=c(Pw,v[i]/u[i])}
Ls=c()
for(i in 1:3){
Ls=c(Ls,Lq[i]+(v[i]/u[i]))}
Colas.data<-data.frame(
  problema=c(1,2,3),
  v=c(v),
  u=c(u),
  P0=c(P0),
  Lq=c(Lq),
  Wq=c(Wq),
  Ws=c(Ws),
  Pw=c(Pw),
  Ls=c(Ls),
  stringsAsFactors = FALSE
)
