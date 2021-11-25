getDigitSum <- function(number) {
    res <- 0
    while (number != 0) {
        res <- res + number %% 10
        number <- number %/% 10
    }
    return(res)
}
