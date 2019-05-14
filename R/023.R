ptm <- proc.time()
# timestart<-Sys.time()

divisors <- function(n){
  y <- seq_len(n) # same as 1:n
  return(y[n %% y == 0])
}

a <- 1:28123
# a <- 2:24

# sum of its proper divisors
soipd <- sapply(a, function(x) {
  tmp <- divisors(x);
  tmp <- tmp[-length(tmp)];
  sum(tmp)})

abundant <- a[soipd > a]

# use matrix instead of use two for loop.
ans <- matrix(abundant, nrow = length(abundant), ncol = length(abundant))

cc <- unique(as.vector(ans + abundant[col(ans)]))
sum(setdiff(a, cc))

## other way
# for (i in 1:length(abundant)) {
#   ans[, i] <- ans[, i] + abundant[i]
# }
# bb <- as.vector(ans)
# bb <- unique(bb)
# 
# bb == cc


# timeend<-Sys.time()
# runningtime<-timeend-timestart
# print(runningtime)
print(proc.time() - ptm)