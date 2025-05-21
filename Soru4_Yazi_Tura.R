para <- function(n) {
  yazi_tura <- sample(c("yazi", "tura"), n, replace = TRUE)
  sum(yazi_tura == "yazi")
}

para(100)
