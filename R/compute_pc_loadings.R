compute_pc_loadings <- function(dat){
  ## dat - gene exp mat with rows as samples and cols as genes
  usv <- svd(scale(dat))
  usv$u
}
