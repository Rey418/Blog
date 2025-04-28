#' Summary Statistics
#'
#' This function calculates mean, median, variance, and standard deviation.
#'
#' @param x A numeric vector.
#'
#' @return A list with summary statistics.
#' @export
summary_stats <- function(x) {
  if (!is.numeric(x)) stop("Input must be numeric.")
  stats <- list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    variance = var(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE)
  )
  return(stats)
}
