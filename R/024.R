ptm <- proc.time()
library(gtools)
x <- 0:9
L <- length(x)
ans <- permutations(n = L, r = L, v = x, repeats.allowed = FALSE)
nrow(ans)
ans[1000000, ]
print(proc.time() - ptm)
