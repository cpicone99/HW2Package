#' sqrt.2
#'
#' A way to return errors for square root of negative numbers instead of NAs
#'
#' @param x A number
#'
#' @return An error or a number
#' @export
#'
#' @examples
#' \dontrun{sqrt.2(2)
#' }
#' \dontrun{sqrt.2(-1)
#' }
#'
sqrt.2 = function(x){
  if ((x) < 0){
    rlang::abort(message = "negative input, NA introduced!",
                 x=x)
  } else {
    sqrt(x)
  }
}
