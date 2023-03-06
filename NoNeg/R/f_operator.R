#' Function Operator
#'
#' If input is greater than 0, then return normal output. If input is invalid, return an error condition object, with “invalid_input” subclass and invalid value attached.
#'
#' @param f A function
#'
#' @return A function
#' @export
#'
#' @examples
#' sqrt.3 = f_operator(sqrt(-1))
f_operator = function(f){
  force(f)
  function(x,...){
    tryCatch(f(x),error=function(y){
      catch_cnd(rlang::abort(.subclass="invalid input",message= "invalid input", invalid_input=x))
    } )
  }
}
