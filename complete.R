
directory<-setwd("C:\\Users\\Mahesha\\Desktop\\Desktop\\Data_Science\\Courseera\\R programming\\Assignment1\\specdata")

complete <- function(directory, id = 1:332) {
  count_complete <- function(fname) sum(complete.cases(read.csv(fname)))
  fnames <- list.files(directory, full.names=TRUE)[id]
  data.frame(id = id, nobs = unlist(lapply(fnames, count_complete)))
}


complete(directory, 1)

complete(directory, c(2, 4, 8, 10, 12))

complete(directory, 30:25)

complete(directory, 3)

cc <- complete(directory, c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete(directory, 54)
print(cc$nobs)

set.seed(42)
cc <- complete(directory, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

#complete <- function(directory, id = 1:332) {
#fnames <- list.files(directory, full.names=TRUE)[id]
#count_complete <- function(fnames) {sum(complete.cases(read.csv(fnames)))}
#data.frame(id = id, nobs = unlist(lapply(fnames, count_complete)))
#}
