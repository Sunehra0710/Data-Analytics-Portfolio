#1.1

# Load the lpSolve package
install.packages("lpSolve")
library(lpSolve)

# Coefficients of the objective function (revenue from each product)
objective <- c(20, 25, 22)

# Coefficients for the constraints
constraints <- matrix(c(2, 4, 4,  # Labor constraint
                        3, 2, 1,  # Material X constraint
                        1, 2, 3), # Material Y constraint
                      nrow = 3, byrow = TRUE)

# Right-hand side of the constraints
rhs <- c(475, 400, 300)

# Direction of inequalities for constraints (all are ≤)
direction <- c("<=", "<=", "<=")

# Solve the integer programming problem
solution <- lp("max", objective, constraints, direction, rhs, all.int = TRUE)

# Display results
solution_status <- solution$status
solution_values <- solution$solution
max_revenue <- solution$objval

# Print results
if(solution_status == 0) {
  cat("Optimal solution found:\n")
  cat("Units of Product A:", solution_values[1], "\n")
  cat("Units of Product B:", solution_values[2], "\n")
  cat("Units of Product C:", solution_values[3], "\n")
  cat("Maximum Revenue:", max_revenue, "\n")
} else {
  cat("No optimal solution found.\n")
}

#1.3

# Load the lpSolve package
library(lpSolve)

# Fixed production quantities close to optimal values from Question 1.1
fixed_quantities <- c(111, 4, 59)

# Initialize objective coefficients starting from the original values
objective_initial <- c(20, 25, 22)

# Set a small increment to start testing for higher profits
increment <- 0.5
max_revenue <- 0
best_objective <- objective_initial

# Loop to test increasing values of the objective function coefficients
for (i in 0:20) {  # Number of iterations to experiment
  # Increase each coefficient slightly
  current_objective <- objective_initial + increment * i
  
  # Solve with the updated objective function
  solution <- lp("max", current_objective, matrix(1, nrow = 1, ncol = 3), "=", sum(fixed_quantities), all.int = TRUE)
  
  # Update maximum revenue and coefficients if revenue is higher and quantities are close to fixed
  if (solution$objval > max_revenue && all(abs(solution$solution - fixed_quantities) <= 5)) {
    max_revenue <- solution$objval
    best_objective <- current_objective
  }
}

# Display the results
cat("Highest possible revenue:", max_revenue, "\n")
cat("Best coefficients for objective function:\n")
cat("Product A:", best_objective[1], "\n")
cat("Product B:", best_objective[2], "\n")
cat("Product C:", best_objective[3], "\n")

#1.4 

# Load necessary packages
library(lpSolve)

# Define the objective function coefficients
objective <- c(20, 22)  # Profit for Products A and C

# Define the constraints matrix (ignore Product B)
constraints <- matrix(c(2, 4,   # Labor constraint
                        3, 1,   # Material X constraint
                        1, 3),  # Material Y constraint
                      nrow = 3, byrow = TRUE)

# Right-hand side of constraints
rhs <- c(475, 400, 300)

# Direction of inequalities
direction <- c("<=", "<=", "<=")

# Solve the LP problem
solution <- lp("max", objective, constraints, direction, rhs, all.int = TRUE)

# Extract results
units_A <- solution$solution[1]  # Units of Product A
units_C <- solution$solution[2]  # Units of Product C
max_revenue <- solution$objval

cat("Optimal Solution:\n")
cat("Units of Product A:", units_A, "\n")
cat("Units of Product C:", units_C, "\n")
cat("Maximum Revenue:", max_revenue, "\n")

# Plotting the Feasible Region
install.packages("ggplot2")
library(ggplot2)

# Define x-axis and y-axis values within constraints
x_vals <- seq(0, 150, by = 1)
y1_vals <- (475 - 4 * x_vals) / 2     # Labor constraint
y2_vals <- (400 - 1 * x_vals) / 3     # Material X constraint
y3_vals <- (300 - 3 * x_vals)         # Material Y constraint

# Plot the feasible region
plot_df <- data.frame(x_vals, y1_vals, y2_vals, y3_vals)
ggplot(plot_df, aes(x = x_vals)) +
  geom_line(aes(y = y1_vals), color = "blue", linetype = "dashed", size = 1) +
  geom_line(aes(y = y2_vals), color = "red", linetype = "dashed", size = 1) +
  geom_line(aes(y = y3_vals), color = "green", linetype = "dashed", size = 1) +
  geom_point(aes(x = units_C, y = units_A), color = "purple", size = 3) +
  xlim(0, max(x_vals)) + ylim(0, max(y1_vals, y2_vals, y3_vals, na.rm = TRUE)) +
  labs(x = "Units of Product C (x-axis)", y = "Units of Product A (y-axis)",
       title = "Feasible Region with Constraints and Optimal Solution") +
  theme_minimal() +
  annotate("text", x = units_C, y = units_A, label = "Optimal Solution", vjust = -1)

# Display final values
cat("Plot saved as a screenshot in your report.\n")

