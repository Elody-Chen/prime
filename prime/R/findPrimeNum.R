findPrimeNum <- function(specifiedRange) {
    # Specified Range must larger than 1
    primeNum <- c()
    if (specifiedRange == 2) {
        primeNum <- c(2)
    } else if (specifiedRange == 3 | specifiedRange == 4) {
        primeNum <- c(2, 3)
    } else if (specifiedRange == 5) {
        primeNum <- c(2, 3, 5)
    } else {
        primeNum <- c(2, 3, 5)
        for (num in 6:specifiedRange) {
            if (num %% 2 == 0 | num %% 5 == 0 | digitSum(num) %% 3 == 0) {
                next
            } else if (isPrimeNumber(num)) {
                primeNum <- append(primeNum, num)
            } else {}
        }
    }
    return(primeNum)
}
