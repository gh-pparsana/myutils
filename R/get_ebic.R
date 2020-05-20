get_ebic <- function(ll, num_params, num_samples, p, gamma=1){
  get_bic(ll, num_params, num_samples) +
    (4 * num_params * gamma * (log(p)))
}
