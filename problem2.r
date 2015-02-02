nextFib <- function(a, b) {
  return(a + b)
}

a <- 1
b <- 2
f <- nextFib(a, b)
currentSum <- 2

while (f < 4000000) {
  if (f %% 2 == 0) {
    currentSum <- currentSum + f
  }
  
  a <- b
  b <- f
  f <- nextFib(a, b)
}

currentSum

