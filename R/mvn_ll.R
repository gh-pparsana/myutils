mvn_ll <- function(S, theta){
  Matrix::determinant(theta, logarithm=T)$modulus[1] - sum(S * theta)
}
