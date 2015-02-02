# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome <- function(n) {
  nStr <- as.character(n)
  
  compare <- function(i, j) {
    substr(nStr, i, i) == substr(nStr, j, j)
  }
  
  i <- 1
  j <- nchar(nStr)
  
  while (i <= j) {
    if (! compare(i, j)) {
      return(FALSE)
    }
    
    i <- i + 1
    j <- j - 1
  }
  
  return(TRUE)
}

aMax <- 0
bMax <- 0
cMax <- 0

for (a in 100:999) {
  for (b in 100:999) {
    c <- a * b
    if (isPalindrome(c) && c > cMax) {
      aMax <- a
      bMax <- b
      cMax <- c
    }
  }
}

print(aMax)
print(bMax)
print(cMax)