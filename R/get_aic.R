get_aic <- function(ll,num_params){
  #ll - log likelihood
  #num_params
  2*(num_params-ll)
}
