library(queueing)
library(writexl)
l=40.45/22
miu=13.6/22
input_mms <- NewInput.MMC(lambda=l,mu=miu,c=4,n=22)

# Create queue class object
output_mm1 <- QueueingModel(input_mms)

# Get queue model report
Report(output_mm1)

# Get queue model summary
summary(output_mm1)

df <- unlist(output_mm1)
df
datos.data<-data.frame(df,stringsAsFactors = TRUE)
write.xlsx(df,
          file = "C:\\Users\\jglv\\OneDrive\\Escritorio\\López Rodríguez Daniela\\Queueing 4servidores.xlsx") 
