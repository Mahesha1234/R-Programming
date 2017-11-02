directory<-setwd("C:\\Users\\Mahesha\\Desktop\\Desktop\\Data_Science\\Courseera\\R programming\\Assignment1\\specdata")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  #set the path
  path = directory
  
  #get the file List in that directory
  fileList = list.files(path)
  
  #extract the file names and store as numeric for comparison
  file.names = as.numeric(sub("\\.csv$","",fileList))
  
  #select files to be imported based on the user input or default
  selected.files = fileList[match(id,file.names)]
  
  #import data
  Data = lapply(file.path(path,selected.files),read.csv)
  
  #convert into data frame
  Data = do.call(rbind.data.frame,Data)
  
  #calculate mean
  mean(Data[,pollutant],na.rm=TRUE)
  
}

pollutantmean(directory, "sulfate", 1:10)

pollutantmean(directory, "nitrate", 70:72)

pollutantmean(directory, "nitrate", 23)

pollutantmean(directory, "sulfate", 1:10)

pollutantmean(directory, "nitrate", 70:72)

pollutantmean(directory, "sulfate", 34)

pollutantmean(directory, "nitrate")
