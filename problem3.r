target <- 600851475143

prime <- function(n) {
  if (n == 2 || n == 3) {
    return(TRUE)
  }
  if(n %% 2 == 0) {
    return(2)
  }
  intSqrtN <- ceiling(sqrt(n))
  for (i in seq(3, intSqrtN, 2)) {
    if (n %% i == 0) {
      return(i)
    }
  }
  return(TRUE)
}

primeFactors <- function(n) {
  factors <- n
  primes <- c()
  
  while (length(factors) > 0) {
    nextFactor <- factors[1]
    factors <- tail(factors, length(factors) - 1)
    
    divisor <- prime(nextFactor)
    
    if (divisor == TRUE) {
      primes <- c(primes, nextFactor)
    } else {
      factors <- c(factors, divisor, nextFactor / divisor)
    }
  }
  
  return(primes)
}

targetFactors <- primeFactors(target)
max(targetFactors)
