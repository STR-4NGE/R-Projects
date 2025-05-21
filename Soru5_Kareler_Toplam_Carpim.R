topla <- function(a, b) {
  t <- 0
  for (i in a:b) {
    t <- t + i^2
  }
  return(t)
}

ic_toplam <- topla(1, 5)

sonuc <- 1
for (j in 1:20) {
  sonuc <- sonuc * ic_toplam
}

print(sonuc)
