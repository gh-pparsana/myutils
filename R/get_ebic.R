get_ebic <- function(ll, num_params, num_samples, p){
  get_bic(ll, num_params, num_samples) +
    (4 * num_params * 1 * (log(p))
}
