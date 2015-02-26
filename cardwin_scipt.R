#Thai Thien
#APCS - 13CTT

input_file<-file("input/cardwinlog9.csv")
input_name<-c("data9")
#input_file
data<-read.csv(input_file)

# store data
p0.pair<-data[[7]]
p0.win<-data[8]


p1.pair<-data[[14]]
p1.win<-data[15]


p2.pair<-data[[21]]
p2.win<-data[22]


p3.pair<-data[[28]]
p3.win<-data[29]


p4.pair<-data[[35]]
p4.win<-data[36]

#generate data.frame of pair, win
p0.data<-cbind(p0.win,p0.pair)
p0.data.pairwin<-subset(p0.data,p0.data[1]=="1",row.name=FALSE)
p0.pairwin<-as.vector(p0.data.pairwin[[2]])

p1.data<-cbind(p1.win,p1.pair)
p1.data.pairwin<-subset(p1.data,p1.data[1]=="1",row.name=FALSE)
p1.pairwin<-as.vector(p1.data.pairwin[[2]])

p2.data<-cbind(p2.win,p2.pair)
p2.data.pairwin<-subset(p2.data,p2.data[1]=="1",row.name=FALSE)
p2.pairwin<-as.vector(p2.data.pairwin[[2]])

p3.data<-cbind(p3.win,p3.pair)
p3.data.pairwin<-subset(p3.data,p3.data[1]=="1",row.name=FALSE)
p3.pairwin<-as.vector(p3.data.pairwin[[2]])

p4.data<-cbind(p4.win,p4.pair)
p4.data.pairwin<-subset(p4.data,p4.data[1]=="1",row.name=FALSE)
p4.pairwin<-as.vector(p4.data.pairwin[[2]])


#generate a table of freq

#freq of getting x pair at beginning of round
p0.pair.freq<-table(factor(p0.pair,level=0:3))
p1.pair.freq<-table(factor(p1.pair,level=0:3))
p2.pair.freq<-table(factor(p2.pair,level=0:3))
p3.pair.freq<-table(factor(p3.pair,level=0:3))
p4.pair.freq<-table(factor(p4.pair,level=0:3))

pair<-cbind(p0.pair.freq,p1.pair.freq,p2.pair.freq,p3.pair.freq,p4.pair.freq)
output.pair<-as.data.frame(pair)
names(output.pair)<-c("player 0 get","player 1 get","player 2 get","player 3 get","player 4 get")

#freq of win by getting x pairs at beginning of round
p0.pairwin.freq<-table(factor(p0.pairwin,level=0:3))
p1.pairwin.freq<-table(factor(p1.pairwin,level=0:3))
p2.pairwin.freq<-table(factor(p2.pairwin,level=0:3))
p3.pairwin.freq<-table(factor(p3.pairwin,level=0:3))
p4.pairwin.freq<-table(factor(p4.pairwin,level=0:3))

pairwin<-cbind(p0.pairwin.freq,p1.pairwin.freq,p2.pairwin.freq,p3.pairwin.freq,p4.pairwin.freq)

output.pairwin<-as.data.frame(pairwin)
names(output.pairwin)<-c("player 0 win","player 1 win","player 2 win","player 3 win","player 4 win")

#Output file csv
name.path<-c("output")
name.pairwin<-paste(name.path,"pairwin",sep="/")
name.pairwin<-paste(name.pairwin,input_name,sep="")
name.pairwin<-paste(name.pairwin,"csv",sep=".")
write.table(output.pairwin,file=name.pairwin,row.names=FALSE,sep=",")

name.path<-c("output")
name.pair<-paste(name.path,"pair",sep="/")
name.pair<-paste(name.pair,input_name,sep="")
name.pair<-paste(name.pair,"csv",sep=".")
write.table(output.pair,file=name.pair,row.names=FALSE,sep=",")
