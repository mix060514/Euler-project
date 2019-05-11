NUM_OF_PRIME <- 10001

i <- 3
pr <- vector('integer', NUM_OF_PRIME)
pr[1] <- 2
count <- 1 # 2 is ignore
while (count < NUM_OF_PRIME) {
  prime <- TRUE
  for (j in 2:(i / 2)) {
    if (i %% j == 0) {
      prime <- FALSE
      break()
    }
  }
  if (prime) {
    count <- count + 1
    pr[count] <- i
  }
  i <- i + 1
}
pr
max(pr)