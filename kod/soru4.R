#veri setini okuyoruz
hasta<- read.table(file="D:/istatistik/HW1/HW1/psoriasis_skin_8genes_10samples.txt", header=TRUE)
saglik<-read.table(file="D:/istatistik/HW1/HW1/normal_skin_8genes_10samples.txt", header=TRUE)

#saglýklý veri seti
t_s=t(saglik)
df_saglik=as.data.frame(t_s)

#hastalýklý veri seti
t_h=t(hasta)
df_hasta=as.data.frame(t_h)

#gen1
mean_saglik_gen1=mean(df_saglik$GAGE4)
mean_hasta_gen1=mean(df_hasta$GAGE4)
dif_mean1=mean_saglik_gen1-mean_hasta_gen1
sd_1=sqrt(1.5/10+1.5/10)
z_1=dif_mean1/sd_1
p_1=pnorm(abs(z_1),lower.tail=FALSE)
p_obs1=2*p_1

#gen2
mean_saglik_gen2=mean(df_saglik$GAGE5)
mean_hasta_gen2=mean(df_hasta$GAGE5)
dif_mean2=mean_saglik_gen2-mean_hasta_gen2
sd_2=sqrt(1.5/10+1.5/10)
z_2=dif_mean2/sd_2
p_2=pnorm(abs(z_2),lower.tail=FALSE)
p_obs2=2*p_2


#gen3
mean_saglik_gen3=mean(df_saglik$`KRTAP7-1`)
mean_hasta_gen3=mean(df_hasta$`KRTAP7-1`)
dif_mean3=mean_saglik_gen3-mean_hasta_gen3
sd_3=sqrt(1.5/10+1.5/10)
z_3=dif_mean3/sd_3
p_3=pnorm(abs(z_3),lower.tail=FALSE)
p_obs3=2*p_3

#gen4
mean_saglik_gen4=mean(df_saglik$`KRTAP8-1`)
mean_hasta_gen4=mean(df_hasta$`KRTAP8-1`)
dif_mean4=mean_saglik_gen4-mean_hasta_gen4
sd_4=sqrt(1.5/10+1.5/10)
z_4=dif_mean4/sd_4
p_4=pnorm(abs(z_4),lower.tail=FALSE)
p_obs4=2*p_4

#gen5
mean_saglik_gen5=mean(df_saglik$TSIX)
mean_hasta_gen5=mean(df_hasta$TSIX)
dif_mean5=mean_saglik_gen5-mean_hasta_gen5
sd_5=sqrt(1.5/10+1.5/10)
z_5=dif_mean5/sd_5
p_5=pnorm(abs(z_5),lower.tail=FALSE)
p_obs5=2*p_5

#gen6
mean_saglik_gen6=mean(df_saglik$XIST)
mean_hasta_gen6=mean(df_hasta$XIST)
dif_mean6=mean_saglik_gen6-mean_hasta_gen6
sd_6=sqrt(1.5/10+1.5/10)
z_6=dif_mean6/sd_6
p_6=pnorm(abs(z_6),lower.tail=FALSE)
p_obs6=2*p_6

#gen7
mean_saglik_gen7=mean(df_saglik$`KRTAP19-3`)
mean_hasta_gen7=mean(df_hasta$`KRTAP19-3`)
dif_mean7=mean_saglik_gen7-mean_hasta_gen7
sd_7=sqrt(1.5/10+1.5/10)
z_7=dif_mean7/sd_7
p_7=pnorm(abs(z_7),lower.tail=FALSE)
p_obs7=2*p_7

#gen8
mean_saglik_gen8=mean(df_saglik$MIR2117)
mean_hasta_gen8=mean(df_hasta$MIR2117)
dif_mean8=mean_saglik_gen8-mean_hasta_gen8
sd_8=sqrt(1.5/10+1.5/10)
z_8=dif_mean8/sd_8
p_8=pnorm(abs(z_8),lower.tail=FALSE)
p_obs8=2*p_8


print("p value of GAGE4:")
print(p_obs1)
print("p value of GAGE5:")
print(p_obs2)
print("p value of KRTAP7-1:")
print(p_obs3)
print("p value of KRTAP8-1:")
print(p_obs4)
print("p value of TSIX:")
print(p_obs5)
print("p value of XIST:")
print(p_obs6)
print("p value of KRTAP19-3:")
print(p_obs7)
print("p value of MIR2117:")
print(p_obs8)

