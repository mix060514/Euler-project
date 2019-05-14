worth <- function(v, name) {
  v <- toupper(v)
  tmp1 <- unlist(strsplit(v, split = ''))
  tmp2 <- unlist(lapply(tmp1, function(x) {which(x == LETTERS)}))
  s <- sum(tmp2)
  pos <- which(v == b)
  ans <- s * pos

  return(ans)
}

# important! This data contain the Name called 'NA', so we need to change the default setting of the scan.
a <- scan(file = 'data/p022_names.txt', what = 'character', sep = ',', na.strings = NULL)
length(a)
print(a)
b <- sort(a)
length(b)

# test case
which(a == 'COLIN')
worth('AARON')
worth('COLIN')
worth('ZULMA')

sum(unlist(lapply(b, worth, name = b)))


## other way from https://lucidmanager.org/euler-problem-22-names-scores/
# names <- readLines("https://projecteuler.net/project/resources/p022_names.txt",
#                    warn =FALSE)
# names <- unlist(strsplit(names, ","))
# names <- gsub("[[:punct:]]", "", names)
# names <- sort(names)
# 
# # Total Name scores
# answer <- 0
# for (i in names) {
#   value <- sum(sapply(unlist(strsplit(i, "")),
#                       function(x) as.numeric(charToRaw(x)) - 64))
#   value <- value * which(names==i)
#   answer <- answer + value
# }
# print(answer)