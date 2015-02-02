##By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 
##13.   What is the 10 001st prime number?


prime <- function(n) {
    if (n == 2 || n == 3) {
        return(TRUE)
    }
    if(n %% 2 == 0 || n < 2) {
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

count <- 0
currentPrime <- 0
nextCandidate <- 0

while (count < 10001) {
    if (prime(nextCandidate)) {
        count <- count + 1
        currentPrime <- nextCandidate
    }
    nextCandidate <- nextCandidate + 1
}