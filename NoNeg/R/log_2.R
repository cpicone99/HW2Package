#' log.2
#'
#' A way to return errors for log of negative numbers instead of NAs
#'
#' @param x A number
#'
#' @return An error or a number
#' @export
#'
#' @examples
#' \dontrun{log.2(2)
#' }
#' \dontrun{log.2(-1)
#' }
#'
log.2 = function(x){
  if ((x) < 0){
    rlang::abort(message="negative input, NA introduced!",x=x)
  } else {
    log(x)
  }
}
