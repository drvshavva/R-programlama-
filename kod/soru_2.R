#veri setini okuyoruz
hasta<- read.table(file="D:/istatistik/HW1/HW1/psoriasis_skin_8genes_10samples.txt", header=TRUE)
saglik<-read.table(file="D:/istatistik/HW1/HW1/normal_skin_8genes_10samples.txt", header=TRUE)


birlestir=cbind(hasta,saglik)
transpose=t(birlestir)

#olu�an matrisi data frame �eviriyoruz
df_cm<-as.data.frame(transpose)
boxplot(df_cm)

