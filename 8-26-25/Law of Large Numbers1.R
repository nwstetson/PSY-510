set.seed(9999)
# Set the number of trials and the number of rolls per trial
#The Law of Large Numbers states that if one repeats an experiment (independently) over and over and averages the results of those experiments, the average will be close to the expected value (e.g., population mean).

# What would the expected mean be? 
# Expected Value equation: E(X) = μ = ∑x P(x)
# To calculate the expected value E(X) or mean μ of a discrete random variable X, just multiply each of the variable's values by their corresponding probabilities and then sum up the resulting products.
em <- (1*(1/6)) + (2*(1/6)) + (3*(1/6)) + (4*(1/6)) + (5*(1/6)) + (6*(1/6)) 
cat("Expected Mean:", em)



num_trials <- 5 #can be thought of as experiments
rolls_per_trial <- 100 #how many participants or respondents in one experiment

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Perform the trials
for (i in 1:num_trials) {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sample_means[i] <- sum_rolls / rolls_per_trial
}

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)


# Set the number of trials and the number of rolls per trial
num_trials <- 10
rolls_per_trial <- 100

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Perform the trials
for (i in 1:num_trials) {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sample_means[i] <- sum_rolls / rolls_per_trial
}

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)




##############
# Set the number of trials and the number of rolls per trial
num_trials <- 50
rolls_per_trial <- 100

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Perform the trials
for (i in 1:num_trials) {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sample_means[i] <- sum_rolls / rolls_per_trial
}

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)




##############
# Set the number of trials and the number of rolls per trial
num_trials <- 500
rolls_per_trial <- 100

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Perform the trials
for (i in 1:num_trials) {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sample_means[i] <- sum_rolls / rolls_per_trial
}

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)




##############
# Set the number of trials and the number of rolls per trial
num_trials <- 5000
rolls_per_trial <- 100

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Perform the trials
for (i in 1:num_trials) {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sample_means[i] <- sum_rolls / rolls_per_trial
}

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)




##############
#install.packages("doParallel")
#install.packages("foreach")
library(doParallel)
library(foreach)

# Set the number of trials and the number of rolls per trial
num_trials <- 50000
rolls_per_trial <- 100

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Initialize an empty vector to store the sample means
sample_means <- numeric(num_trials)

# Set the number of cores to utilize (adjust according to your system)
num_cores <- 16

# Initialize parallel backend with the specified number of cores
cl <- makeCluster(num_cores)
registerDoParallel(cl)

# Perform the trials in parallel
sample_means <- foreach(i = 1:num_trials, .combine = c) %dopar% {
  # Initialize the sum of rolls for each trial
  sum_rolls <- 0
  
  # Roll the die 'rolls_per_trial' times and sum the outcomes
  for (j in 1:rolls_per_trial) {
    sum_rolls <- sum_rolls + roll_die()
  }
  
  # Calculate the sample mean for each trial
  sum_rolls / rolls_per_trial
}

# Stop the parallel backend
stopCluster(cl)
registerDoSEQ()

# Calculate the average of the sample means
mean_of_sample_means <- mean(sample_means)

# Print the result
cat("Mean of sample means:", mean_of_sample_means)
hist(sample_means)



