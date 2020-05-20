get_bic <- function(ll,num_params, num_samples){
  #ll - log likelihood
  #num_params
  penalty = (num_params*log(num_samples))
  penalty - (2*ll)
}
