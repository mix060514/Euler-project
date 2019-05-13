library(magrittr)

oo <- options()
oo$scipen
options(scipen=999)

2^1000 %>% 
  as.list()
  
  as.character %>% 
  strsplit('') %>% 
  lapply(as.numeric) %>%  
  unlist %>% 
  sum
