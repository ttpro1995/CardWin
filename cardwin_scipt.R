
input_file<-file("data/cardwinlog9.csv")

#input_file
data<-read.csv(input_file)

# store data
p0.pair<-data[7]
p0.win<-data[8]


p1.pair<-data[14]
p1.win<-data[15]


p2.pair<-data[21]
p2.win<-data[22]


p3.pair<-data[28]
p3.win<-data[29]


p4.pair<-data[35]
p4.win<-data[36]

#generate data.frame of pair, win
p0.data<-cbind(p0.win,p0.pair)
p0.pairwin<-subset(p0.data,p0.data[1]=="1",row.name=FALSE)

p1.data<-cbind(p1.win,p1.pair)
p1.pairwin<-subset(p1.data,p1.data[1]=="1",row.name=FALSE)

p2.data<-cbind(p2.win,p2.pair)
p2.pairwin<-subset(p2.data,p2.data[1]=="1",row.name=FALSE)

p3.data<-cbind(p3.win,p3.pair)
p3.pairwin<-subset(p3.data,p3.data[1]=="1",row.name=FALSE)

p4.data<-cbind(p4.win,p4.pair)
p4.pairwin<-subset(p4.data,p4.data[1]=="1",row.name=FALSE)

#generate a table of freq
p0.pair.freq<-table(p0.pair)
p1.pair.freq<-table(p1.pair)
p2.pair.freq<-table(p2.pair)
p3.pair.freq<-table(p3.pair)
p4.pair.freq<-table(p4.pair)




#win freq for 1 pair, 2 pairs, 3 pairs
