get_num_edges <- function(net){
  (sum(net!=0)-ncol(net))/2
}
