library(rlang)

sqrt.2 = function(x){
  if (x < 0) {
    rlang::abort(message = "negative input, NA introduced!")
  } else {
    sqrt(x)
  }
}

log.2 = function(x){
  if (x < 0) {
    rlang::abort(message = "negative input, NA introduced!")
  } else {
    log(x)
  }
}

f_operator <- function(f) {
  force(f)
  function(x) {
    if (x > 0) {
      f(x)
    }
    else {
      catch_cnd(abort(.subclass = "invalid_input", message = paste("invalid input", x)))
    }
  }
}
