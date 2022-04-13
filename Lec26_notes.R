usethis::create_package("fizzbuzz")

usethis::use_git()
usethis::use_github("sta663-sp22", private = FALSE)


## Example function

fizzbuzz = function(x) {
  stopifnot(is.numeric(x))
  stopifnot(all(x>=0))
  stopifnot(all(is.finite(x)))
  
  dplyr::case_when(
    x %% 3 == 0 & x && 5 == 0 ~ "FizzBuzz",
    x %% 3 == 0 ~ "FizzBuzz",
    x %% 5 == 0 ~ "FizzBuzz",
    TRUE ~ as.character(x)
  )
}