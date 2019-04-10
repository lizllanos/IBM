# Script to analize IBM forecast
# Lizeth Llanos 2019

path.files = "D:/OneDrive - CGIAR/Desktop/IBM"
all_files = list.files(path.files,pattern = ".csv")
x = "rec.seasonalPFP.20181130T000000Z.20180601T000000.P183D."
sites = paste0(x,c("Lorica", "Yopal", "Ibague", "La Union", "Espinal","Cerete"))

select_files = all_files[grep(paste(sites,collapse="|"),all_files)]

all_data = lapply(paste(path.files,select_files,sep = "/"),function(x){read.csv(paste(path.files,select_files[1],sep = "/"),skip = 1, header = F)[,-4:-1]})




