i <- 1
d <- 1:20
a <- rep(1, length(d))
while (sum(a) != 0) {
  a <- i %% d
  # print(i, a)
  i <- i + 1
}
i

i <- 1
can = FALSE
while (!can) {
  can = TRUE
  for (j in 1:20) {
    if (i %% j != 0) {
      can = FALSE
      break()
    }
  }
  # print(i)
  if (can) {
    print(i)
  }
  i <- i + 1
}
