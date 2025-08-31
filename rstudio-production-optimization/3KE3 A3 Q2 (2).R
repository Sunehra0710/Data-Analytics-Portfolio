#2.1 

# Set seed for reproducibility
set.seed(50)

# Generate random production values for Company A
cola <- rnorm(100, mean = 100, sd = sqrt(25))       # Cola with mean 100, variance 25
lemonade <- rnorm(100, mean = 70, sd = sqrt(36))    # Lemonade with mean 70, variance 36
iced_tea <- rnorm(100, mean = 50, sd = sqrt(9))     # Iced Tea with mean 50, variance 9

# Generate random production values for Company B
dolls <- rnorm(100, mean = 70, sd = sqrt(16))       # Dolls with mean 70, variance 16
cars <- rnorm(100, mean = 60, sd = sqrt(9))         # Cars with mean 60, variance 9
puzzles <- rnorm(100, mean = 40, sd = sqrt(25))     # Puzzles with mean 40, variance 25

# Define profit margins for Company A
profit_margin_A <- c(5, 7, 6)  # Cola, Lemonade, Iced Tea

# Calculate profitability for Company A
profit_A <- cola * profit_margin_A[1] + lemonade * profit_margin_A[2] + iced_tea * profit_margin_A[3]
expected_profit_A <- mean(profit_A)  # Expected monthly profit for Company A

# Define profit margins for Company B
profit_margin_B <- c(4, 8, 6)  # Dolls, Cars, Puzzles

# Calculate profitability for Company B
profit_B <- dolls * profit_margin_B[1] + cars * profit_margin_B[2] + puzzles * profit_margin_B[3]
expected_profit_B <- mean(profit_B)  # Expected monthly profit for Company B

# Display expected profits
cat("Expected Monthly Profit for Company A:", expected_profit_A, "\n")
cat("Expected Monthly Profit for Company B:", expected_profit_B, "\n")

# Choose the company with higher profitability
if (expected_profit_A > expected_profit_B) {
  cat("Invest in Company A.\n")
} else {
  cat("Invest in Company B.\n")
}

#2.2 

# Find the production levels for maximum profitability for Company A
optimal_index_A <- which.max(profit_A)
optimal_cola <- cola[optimal_index_A]
optimal_lemonade <- lemonade[optimal_index_A]
optimal_iced_tea <- iced_tea[optimal_index_A]

cat("Optimal Production Levels for Company A:\n")
cat("Cola:", optimal_cola, "\n")
cat("Lemonade:", optimal_lemonade, "\n")
cat("Iced Tea:", optimal_iced_tea, "\n")

#2.3 

# Find the production levels for maximum profitability for Company B
optimal_index_B <- which.max(profit_B)
optimal_dolls <- dolls[optimal_index_B]
optimal_cars <- cars[optimal_index_B]
optimal_puzzles <- puzzles[optimal_index_B]

cat("Optimal Production Levels for Company B:\n")
cat("Dolls:", optimal_dolls, "\n")
cat("Cars:", optimal_cars, "\n")
cat("Puzzles:", optimal_puzzles, "\n")

