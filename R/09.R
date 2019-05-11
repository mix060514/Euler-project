library(magrittr)

END = 5
a <- (1:END) ^ 2
for (i in 1:END) {
  for (j in 1:i) {
    if ((a[i] - a[j]) %in% a[1:j]) {
      print('yes')
    } 
  }
}
# 
# if (a ^ 2 + b ^ 2 == c ^ 2) {
# 
# }
%>% 