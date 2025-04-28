setClass(
  "StatsS4",
  slots = list(
    data = "numeric",
    mean = "numeric",
    median = "numeric",
    sd = "numeric"
  )
)


create_stats_s4 <- function(x) {
  if (!is.numeric(x)) stop("Input must be a numeric vector")

  new("StatsS4",
      data = x,
      mean = mean(x),
      median = median(x),
      sd = sd(x)
  )
}


setMethod(
  "show",
  "StatsS4",
  function(object) {
    cat("Summary Statistics for the Data (S4):\n")
    cat("Mean: ", object@mean, "\n")
    cat("Median: ", object@median, "\n")
    cat("Standard Deviation: ", object@sd, "\n")
  }
)
