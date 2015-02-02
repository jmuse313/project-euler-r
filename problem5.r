# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

# Since we need a multiple of 20, we can limit ourselves to
# checking every 20th number.
delta <- 20

# Start here because we know it will be bigger and this is
# divisible by 20.
start <- 2520

# Numbers that we actually have to test.
toCheck <- c(19, 18, 17, 16, 15, 14, 13, 12, 11)

isMultiple <- function(value) {
  return(sum(value %% toCheck) == 0)
}

candidate <- start
while (! isMultiple(candidate)) {
  candidate <- candidate + delta
}

print(candidate)