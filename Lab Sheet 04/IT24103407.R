setwd("C:\\Users\\it24103407\\Desktop\\IT24103407")
branch_data <- read.table("Exercise.txt", header = TRUE)
head(branch_data)

boxplot(branch_data$Sales,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "lightblue",
        border = "black") 

fivenum(branch_data$Advertising) 

IQR(branch_data$Advertising) 

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  outliers <- x[x < (Q1 - 1.5*IQR_val) | x > (Q3 + 1.5*IQR_val)]
  return(outliers)
}

find_outliers(branch_data$Years)

