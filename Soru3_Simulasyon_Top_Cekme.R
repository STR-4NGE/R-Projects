toplar <- c(rep("kirmizi", 5), rep("beyaz", 8), rep("sari", 10))

set.seed(123)
deneme <- replicate(10000, {
  secilen <- sample(toplar, 50, replace = TRUE)
  sum(secilen == "kirmizi")
})

mean(deneme)
