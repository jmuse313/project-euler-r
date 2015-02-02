# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

prime <- function(n) {
  if (n == 2 || n == 3) {
    return(TRUE)
  }
  if(n %% 2 == 0 || n == 1) {
    return(FALSE)
  }
  intSqrtN <- ceiling(sqrt(n))
  for (i in seq(3, intSqrtN, 2)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

currentSum <- 0

for (n in 1:2000000) {
  if (prime(n)) {
    currentSum <- currentSum + n
  }
}

print(currentSum)