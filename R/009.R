library(tidyverse)
library(magrittr)

END = 1000 # because a + b + c = 1000, so the max of c is 1000.
square <- (1:END) ^ 2
solution <- data.frame(row.names = c("c", "a", "b"))

for (i in 1:END) {
  for (j in 1:i) {
    if ((square[i] - square[j]) %in% square[1:j]) {
      tmp <- c(square[i],  square[j], square[i] - square[j])
      tmp <- sqrt(tmp)
      solution <- rbind(solution, tmp)      
      # print(tmp)
    } 
  }
}

colnames(solution) <- c("c", "a", "b")
head(solution)

solution %>% 
  mutate("suma" = c + b + a, 'proda' = a * b * c) %>% 
  arrange(b) %>% 
  select(a, b, c, suma, proda) %>% 
  filter(suma == 1000)
