primes <- c( 2,  3,  5,  7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 
            43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
x <- c(3,4,12,19,23,51,61,63,78)
y <- c()
for (i in 1:9) {
  does_break <- 0
  for (p in 1:25) {
    if (primes[p] == x[i]) {
      does_break <- 1
      break
    } 
  }
  if (does_break == 0) {
    y <- c(y,x[i])
  }
}
print(y)

