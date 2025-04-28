create_stats_s3 <- function(x) {
  if (!is.numeric(x)) stop("Input must be a numeric vector")

  stats <- list(data = x, mean = mean(x), median = median(x), sd = sd(x))
  class(stats) <- "StatsS3"
  return(stats)
}


print.StatsS3 <- function(x) {
  cat("Summary Statistics for the Data (S3):\n")
  cat("Mean: ", x$mean, "\n")
  cat("Median: ", x$median, "\n")
  cat("Standard Deviation: ", x$sd, "\n")
}
