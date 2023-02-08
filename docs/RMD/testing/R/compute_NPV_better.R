#' compute_NPV
#'
#' compute net present value
#' @param value/cost ($)
#' @param time in the future that cost/value occurs (years)
#' @param discount rate
#' @return value in $


compute_NPV = function(value, time, discount) {

  # make sure you don't have unrealistic discount rates
  if (discount < 0 | discount > 1) stop("Discount rate is not between 0 and 1")

  # alert user if you have negative values
  if (any(value < 0)) warning("At least one input value is negative")
  # use value to compute NPV
  result = value / (1 + discount)**time
  return(result)
}

