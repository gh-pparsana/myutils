pc_estimate = function(dat){
  # dat is a gene expression matrix with rows as samples and columns as genes
  ## determine number of principal components to adjust for
  mod = matrix(1, nrow = dim(dat)[1], ncol = 1)
  colnames(mod) = "Intercept"
  n.pc <- num.sv(t(scale(dat)), mod,method="be") ## Input to num.sv is a matrix with rows as genes and cols as samples
  n.pc
}
