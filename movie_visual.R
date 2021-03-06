cname=c("id","Movie_Name","Year","Rating","Length")
m_abr=read.csv("/home/abhijeet/work/hadoop_training/PIG/pig_project/m_abr.csv",header = FALSE,sep ="," , col.names = cname)
m_ber=read.csv("/home/abhijeet/work/hadoop_training/PIG/pig_project/m_ber.csv",header = FALSE,sep ="," , col.names = cname)
hist(m_abr[[4]],right = FALSE, breaks = c(3.5,3.6,3.7,3.8,3.9,4.0,4.1), ylim = c(0,15), col = "navyblue" , border ="lightgreen" , main = "HISTOGRAM FOR MOVIE RATINGS", xlab = "RATINGS")
hist(m_ber[[4]],right = FALSE, breaks = c(2.4,2.5,2.6,2.8,2.9,3.0,3.1,3.2,3.3,3.4,3.5), xlim = c(2.4,3.6) ,ylim = c(0,5), col = "navyblue" , border ="lightgreen" , main = "HISTOGRAM FOR MOVIE RATINGS", xlab = "RATINGS")
