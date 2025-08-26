#Central Limit Theorem 
#The Central Limit Theorem states that for independently distributed random variables, the sampling distribution of the standardized sample mean generally takes the form of the normal distribution (no matter if the actual distribution is not normal). 


set.seed(99999)
# Set the number of data points
num_data_points <- 5700000

# Set the mean and standard deviation of the normal distribution
mean <- 78
sd <- 5

# Generate a random sample from the normal distribution
data <- rnorm(num_data_points, mean = mean, sd = sd)

# Create a histogram
hist(data, breaks = 100, main = "Histogram of Normal Distribution",
     xlab = "Values", ylab = "Frequency")



#Now let's take a couple of samples from this population
# Set the sample size
sample_size1 <- 10

# Take a random sample from the population data
sample_data1 <- sample(data, size = sample_size1, replace = FALSE)

# Print the sample data
hist(sample_data1)
summary(sample_data1)
sd(sample_data1)
median(sample_data1)



# Set the sample size
sample_size2 <- 30

# Take a random sample from the population data
sample_data2 <- sample(data, size = sample_size1, replace = FALSE)

# Print the sample data
hist(sample_data2)
summary(sample_data2)
sd(sample_data2)
median(sample_data2)



#Now let's take more..
# Set the sample size
sample_size3 <- 1000

# Take a random sample from the population data
sample_data3 <- sample(data, size = sample_size3, replace = FALSE)

# Print the sample data
hist(sample_data3)
summary(sample_data3)
sd(sample_data3)
median(sample_data3)



#more...
sample_size4 <- 3000
  
# Take a random sample from the population data
sample_data4 <- sample(data, size = sample_size3, replace = FALSE)

# Print the sample data
hist(sample_data4)
summary(sample_data4)
sd(sample_data4)
median(sample_data4)


