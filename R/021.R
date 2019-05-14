divisors <- function(n){
  y <- seq_len(n) # same as 1:n
  return(y[n %% y == 0])
}

# sum of proper divisors 
sopd <- function(v){
  if (length(v) != 1) {
    v <- v[-length(v)]
  }
  return(sum(v))
}

sopd(divisors(220))
sopd(divisors(284))

AY <- 2:10000

a <- unlist(lapply(AY, function(x){sopd(divisors(x))}))
b <- unlist(lapply(a, function(x){sopd(divisors(x))}))
AY[AY == b & a != b]
sum(AY[AY == b & a != b])

