```r
# Example illustrating a potential issue with R's recycling behavior

matrix1 <- matrix(1:4, nrow = 2, ncol = 2)
vector1 <- c(10, 20)

result <- matrix1 + vector1
print(result)

# Unexpected behavior:
# R recycles vector1 to match the dimensions of matrix1, leading to unexpected addition

# Another example demonstrating potential error with subsetting 

data <- data.frame(A = 1:3, B = 4:6)

subset_data <- data[data$A > 1, ]

if (nrow(subset_data) == 0) {
  # Handle case where the subset is empty 
  print("Subset is empty")
} else {
  print(subset_data)
}
```