###
# dat input expression data with rows as observations, and columns as genes
q_normalize <- function(dat){
  n = nrow(dat)
  p = ncol(dat)
  rank.dat =  dat # matrix for ranking
  for (i in 1:p){
    rank.dat[,i] = rank(dat[,i])
  }
  U = rank.dat/(n+1)
  norm.dat = qnorm(U)
  norm.dat # output is quantile normalized gene expression data with rows as samples and columns as genes
}
