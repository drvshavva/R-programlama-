
#veri setini okuyoruz
mydata<- read.table(file="D:/istatistik/HW1/HW1/normal_skin_8genes_10samples.txt", header=TRUE)

#her sütüun gen, her satır bir örnek olacak şekilde transpozu alınıyor
data<-t(mydata)

#oluşan matrisi data frame çeviriyoruz
data_df<-as.data.frame(data)

#her genin standart sapma değeri bulunur.
gen_1 <- sd(data_df$GAGE4,na.rm=FALSE)
gen_2 <- sd(data_df$GAGE5,na.rm=FALSE)
gen_3 <- sd(data_df$`KRTAP7-1`,na.rm=FALSE)
gen_4 <- sd(data_df$`KRTAP8-1`,na.rm=FALSE)
gen_5 <- sd(data_df$TSIX,na.rm=FALSE)
gen_6 <- sd(data_df$XIST,na.rm=FALSE)
gen_7 <- sd(data_df$`KRTAP19-3`,na.rm=FALSE)
gen_8 <- sd(data_df$MIR2117,na.rm=FALSE)

#%90 güven aralığında mean değerlerii her gen için