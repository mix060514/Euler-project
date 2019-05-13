## create data

LENGTH <- 15
triangle  <- scan( './data/018.txt')
fj <- NULL


for (i in 1:LENGTH) {
  fi <- NULL
  for (j in 1:i) {
    fi <- c(fi, triangle [1])
    triangle  <- triangle [-1]
  }
  for (j in 1:(15 - i)) {
    fi <- c(fi, 0)
  }
  fj <- rbind(fj, fi)
}
fj <- as.matrix(fj)
row.names(fj) <- NULL
fo <- fj
fj

## process
## I give up, use solution from here:
## https://www.geeksforgeeks.org/maximum-path-sum-triangle/
for (r in 15:2) {
  a <- NULL
  for (c in 1:(r - 1)) {
    if (fj[r, c] >= fj[r, c + 1]) {
      fj[r - 1, c] <- fj[r - 1, c] + fj[r, c]
    } else {
      fj[r - 1, c] <- fj[r - 1, c] + fj[r, c + 1]
    }
  }
  print(fj[r - 1, ])
}
# fo