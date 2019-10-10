#veri setini okuyoruz
mydata<- read.table(file="D:/istatistik/HW1/HW1/psoriasis_skin_8genes_10samples.txt", header=TRUE)

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

#önce her genin ortalama değerini buluyoruz
mean_gen1=mean(data_df$GAGE4)
mean_gen2=mean(data_df$GAGE5)
mean_gen3=mean(data_df$`KRTAP7-1`)
mean_gen4=mean(data_df$`KRTAP8-1`)
mean_gen5=mean(data_df$TSIX)
mean_gen6=mean(data_df$XIST)
mean_gen7=mean(data_df$`KRTAP19-3`)
mean_gen8=mean(data_df$MIR2117)

#sonra her gen için sample standart sapma değeri kullanılarak standart error bulunuyor
se_gen_1=gen_1/sqrt(10)
se_gen_2=gen_2/sqrt(10)
se_gen_3=gen_3/sqrt(10)
se_gen_4=gen_4/sqrt(10)
se_gen_5=gen_5/sqrt(10)
se_gen_6=gen_6/sqrt(10)
se_gen_7=gen_7/sqrt(10)
se_gen_8=gen_8/sqrt(10)

#t_dist değeri bulunuyor
t_dist=qt(0.05,9,lower.tail = FALSE)

#her gen değeri için margin error
m_e_gen1=t_dist*se_gen_1
m_e_gen2=t_dist*se_gen_2
m_e_gen3=t_dist*se_gen_3
m_e_gen4=t_dist*se_gen_4
m_e_gen5=t_dist*se_gen_5
m_e_gen6=t_dist*se_gen_6
m_e_gen7=t_dist*se_gen_7
m_e_gen8=t_dist*se_gen_8

#sol aralık değerleri
left_gen1=mean_gen1-m_e_gen1
left_gen2=mean_gen2-m_e_gen2
left_gen3=mean_gen3-m_e_gen3
left_gen4=mean_gen4-m_e_gen4
left_gen5=mean_gen5-m_e_gen5
left_gen6=mean_gen6-m_e_gen6
left_gen7=mean_gen7-m_e_gen7
left_gen8=mean_gen8-m_e_gen8

#sağ aralık değerleri
right_gen1=mean_gen1+m_e_gen1
right_gen2=mean_gen2+m_e_gen2
right_gen3=mean_gen3+m_e_gen3
right_gen4=mean_gen4+m_e_gen4
right_gen5=mean_gen5+m_e_gen5
right_gen6=mean_gen6+m_e_gen6
right_gen7=mean_gen7+m_e_gen7
right_gen8=mean_gen8+m_e_gen8



