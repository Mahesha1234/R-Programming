directory<-setwd("C:\\Users\\Mahesha\\Desktop\\Desktop\\Data_Science\\Courseera\\R programming\\Assignment1\\specdata")

corr <- function(directory, threshold = 0) {
tcorr <- function(fname) {
  
  data <- read.csv(file.path(directory, fname))
  
  nobs <- sum(complete.cases(data))
  
  if (nobs > threshold) {
    
    return (cor(data$nitrate, data$sulfate, use="complete.obs"))
    
  }
  
}

tcorrs <- sapply(list.files(directory), tcorr) #get all correlations + NULLs

tcorrs <- unlist(tcorrs[!sapply(tcorrs, is.null)]) #remove NULLs

return (tcorrs)

}


cr <- corr(directory, 150)
head(cr)

summary(cr)


cr <- corr(directory, 5000)
summary(cr)

cr <- corr(directory)
summary(cr)

length(cr)

cr <- corr(directory)                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr(directory, 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr(directory, 2000)                
n <- length(cr)                
cr <- corr(directory, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))

fname
