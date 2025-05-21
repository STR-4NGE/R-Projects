f <- function(x) {
  ifelse(abs(x) <= 3, x^2, 1 / (1 + x))
}

x_vals <- seq(-10, 10, by = 0.1)
y_vals <- f(x_vals)

plot(x_vals, y_vals, type = "l", col = "blue", lwd = 2,
     xlab = "x", ylab = "f(x)", main = "Fonksiyon Grafiği")
grid()
