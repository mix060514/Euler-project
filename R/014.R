next_num <- function(n){
  if (n %% 2 == 0) {
    return(n / 2)
  } else {
    return(3 * n + 1)
  }
}

NUM <- 1000000
NUM <- 100
b <- vector('numeric', NUM)

for (i in 1:NUM) {
  n <- i
  count <- 0
  while (n != 1) {
    # cat(paste(n, '->'))
    n <- next_num(n)
    count <- count + 1
  }
  # cat(n, '\n')
  # cat(count, '\n')
  b[i] <- count
}

print(b)
which(b == max(b))

