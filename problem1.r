candidates <- 1:999

currentSum <- 0
for (x in candidates) {
  
  if (x %% 3 == 0 || x %% 5 == 0) {
    # Yes
    currentSum <- currentSum + x
  }

}

currentSum
