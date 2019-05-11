MAX <- 2000000
# MAX <- 100
# MAX <- 100000
bb <- 2:MAX
ans <- NULL

# i <- 1
while(length(bb) != 0) {
  # print(paste(i, length(bb)))
  tmp <- bb[1]
  ans <- c(ans,tmp)
  bb <- bb[!(bb %% tmp == 0)]  
  # i <- i + 1
}

# ans
sum(ans)
