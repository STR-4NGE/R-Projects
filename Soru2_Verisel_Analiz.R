# Örnek veri seti
hasta <- data.frame(
  yas = sample(20:80, 100, replace = TRUE),
  VKI = runif(100, 18, 35),
  glukoz = runif(100, 70, 180),
  tansiyon = runif(100, 90, 160),
  cinsiyet = sample(c("E", "K"), 100, replace = TRUE)
)

# a) VKI > 25 olan erkeklerin yaş ortalaması
mean(hasta$yas[hasta$VKI > 25 & hasta$cinsiyet == "E"])

# b) Glukozu 95–115 arasında olanların cinsiyete göre tansiyon ortalaması
subset_data <- hasta[hasta$glukoz >= 95 & hasta$glukoz <= 115, ]
aggregate(tansiyon ~ cinsiyet, data = subset_data, FUN = mean)
