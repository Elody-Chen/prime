isPrimeNumber <- function(num) {
    # num must larger than 1
    if (num <= 1) {
        return(FALSE)
    }
    bound <- sqrt(num)
    factor <- 2
    res <- TRUE
    while (factor <= bound) {
        if (num %% factor == 0) {
            res <- FALSE
            return(res)
        }
        factor <- factor + 1
    }
    return(res)
}
