#' Normalize a Numeric Vector
#'
#' Scales a numeric vector between 0 and 1.
#'
#' @param x A numeric vector.
#'
#' @return An object of class 'normalized_vector' containing the normalized data.
#' @export
#'
#' @examples
#' normalize(c(10, 20, 30))
normalize <- function(x) {
  if (!is.numeric(x)) stop("Input must be numeric.")

  normalized <- (x - min(x)) / (max(x) - min(x))
  structure(normalized, class = "normalized_vector")
}

#' Print method for normalized_vector
#'
#' @param x An object of class 'normalized_vector'.
#' @param ... Additional arguments (ignored).
#' @export
print.normalized_vector <- function(x, ...) {
  cat("Normalized Vector:\n")
  print(unclass(x))
}
