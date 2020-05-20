mvn_ll <- function(S, theta){
  -determinant(theta, logarithm=T)$modulus[1] + sum(S * theta)
}
