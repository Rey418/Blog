#Example to try
library(easyStats)

#Normalize some data
data <- c(2, 4, 6, 8, 10)
normalized_data <- normalize(data)
print(normalized_data)


#summary statistics
summary_result <- summary_stats(data)
print(summary_result)


#Use the S3 method
s3_obj <- create_stats_s3(data)
print(s3_obj)


#S4 method
s4_obj <- create_stats_s4(data)
show(s4_obj)
