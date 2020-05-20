sf_test <- function (k, nBreaks = 10)
{
  ## This function is an adaptation of WGCNA scaleFreeFitIndex
  discretized.k = cut(k, nBreaks)
  dk = tapply(k, discretized.k, mean)
  p.dk = as.vector(tapply(k, discretized.k, length)/length(k))
  breaks1 = seq(from = min(k), to = max(k), length = nBreaks +
                  1)
  hist1 = hist(k, breaks = breaks1, plot = FALSE, right = TRUE)
  dk2 = hist1$mids
  dk = ifelse(is.na(dk), dk2, dk)
  dk = ifelse(dk == 0, dk2, dk)
  p.dk = ifelse(is.na(p.dk), 0, p.dk)
  log.dk = as.vector(log10(dk))
  log.p.dk = as.numeric(log10(p.dk + 1e-09))
  lm1 = lm(log.p.dk ~ log.dk)
  lm2 = lm(log.p.dk ~ log.dk + I(10^log.dk))
  datout = data.frame(Rsquared.SFT = summary(lm1)$r.squared,
                      slope.SFT = summary(lm1)$coefficients[2, 1],
                      truncatedExponentialAdjRsquared = summary(lm2)$adj.r.squared)
  datout
}
