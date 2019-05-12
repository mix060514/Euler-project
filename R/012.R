NUM <- 500

create_triangle_number <- function(n){
  if (n >= 1) {
    return(sum(1:n))  
  }
  return(NULL)
}

i <- 1
divisors <- 0

while (divisors < NUM) {
  n <- create_triangle_number(i)
  divisors <- 0
  
  for (j in 1:sqrt(n)) {
    if (n %% j == 0) {
      divisors <- divisors + 2
    }
  }
  i <- i + 1
}

print(paste0('triangle number: ', n, ', and # of divisors is ', divisors))

