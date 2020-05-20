select_genes <- function(dat, threshold, prop_samples){
  min.samples <- round(prop_samples*dim(dat)[1]) # default min.samples expression in at least 1/4 of samples
  keep <- apply(dat, 2, function(x, n = min.samples){
    t = sum(x >= threshold) >= n
    t
  })
  dat <- dat[,keep]
  dat
}
