primes <- c(2, 3, 5,7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 
            43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
x <- c(3, 4, 12, 19, 23, 51, 61, 63, 78)
not_prime <- c()
#First method
for (i in 1:length(x)) {
  does_break <- 0
  for (p in 1:length(primes)) {
    if (primes[p] == x[i]) {
      does_break <- 1
      break
    } 
  }
  if (does_break == 0) {
    not_prime <- c(not_prime, x[i])
  }
}
print(not_prime)
#Second method
not_prime_2 <- c()
for (i in 1:length(x)) {
  if (any(x[i] == primes ) == FALSE) {
    not_prime_2 <- c(not_prime_2, x[i])
  }
}
print(not_prime_2)
