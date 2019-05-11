word <- function(chrs){
  chrs <- unlist(strsplit(chrs, ""))
  num_str <- length(chrs)
  if (num_str %% 2 == 0) {
    for (i in 1:(num_str / 2)) {
      # cat(paste(chrs[i], chrs[num_str - i + 1]))
      if (chrs[i] != chrs[num_str - i + 1]) {
        return(FALSE)
      }
    }
  } else {
    for (i in 1:((num_str - 1) / 2)) {
      # cat(paste(chrs[i], chrs[num_str - i + 1]))
      if (chrs[i] != chrs[num_str - i + 1]) {
        return(FALSE)
      }
    }
  }
  return(TRUE)
}
word('sosos')
word('soso')

a <- NULL
for (i in 100:999) {
  for (j in 100:999) {
    if (word(toString(i * j))){
      a <- c(a, i * j)
      # cat(paste(i, j, i * j,'\n'))
    }
  }
}
a <- sort(unique(a))
a