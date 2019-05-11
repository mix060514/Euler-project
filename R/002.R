a <- c(1, 2)
i <- 1
while (TRUE) {
  f <- a[i] + a[i + 1]
  if (f > 4000000) {break()}
  a <- c(a, f)
  i <- i + 1
}
sum(a[ifelse(a %% 2 == 0, TRUE, FALSE)])