library(tidyverse)

n <-  600851475143
# n <- 13195
i <- 1
a <- NULL
ends <- n
while (i < ends) {
  if (n %% i == 0) {
    # cat(paste(i), '\n')
    a <- c(a, i)
    ends <- n / i
  }
  i <- i + 1
}
a
b <- NULL
for (i in 1:length(a)) {
  # print(a[i])
  for (j in 2:(a[i] - 1)) {
    if (a[i] %% j == 0) {
      b <- c(b, a[i])
      break()
    }
  }
}

# a[!(a %in% b)]
setdiff(a, b)
