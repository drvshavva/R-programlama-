#veri setini okuyoruz
hasta<- read.table(file="D:/istatistik/HW1/HW1/psoriasis_skin_8genes_10samples.txt", header=TRUE)
saglik<-read.table(file="D:/istatistik/HW1/HW1/normal_skin_8genes_10samples.txt", header=TRUE)

#sagl�kl� i�in korelasyon matrisi
t_s=t(saglik)
df_saglik=as.data.frame(t_s)
cor_sag=cor(df_saglik,use="complete.obs")

#hastal�kl� i�in korelasyon matrisi
t_h=t(hasta)
df_hasta=as.data.frame(t_h)
cor_has=cor(df_hasta,use="complete.obs")

birlestir=cbind(hasta,saglik)
transpose=t(birlestir)

#olu�an matrisi data frame �eviriyoruz
df_cm<-as.data.frame(transpose)
cor_sag_has=cor(df_cm,use="complete.obs")
