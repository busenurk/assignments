library(qcc)
data(orangejuice)
head(orangejuice)
attach(orangejuice)

npchart=qcc(D[trial], sizes=size[trial], type="np")
npchart$violations
vio1<-npchart$violations$beyond.limits

npchart2=qcc(D[trial][-vio1], sizes=size[trial][-vio1], type="np")

npchart2$violations

vio2<-npchart2$violations$beyond.limits

npchart3=qcc(D[trial][-c(vio1,vio2)], sizes=size[trial][-c(vio1,vio2)], type="np")

npchart3$violations$beyond.limits

vio3<-npchart3$violations$beyond.limits

npchart4=qcc(D[trial][-c(vio1,vio2,vio3)], sizes=size[trial][-c(vio1,vio2,vio3)], type="np")

npchart4$violations$beyond.limits

## Prosesteki problem nedir?
