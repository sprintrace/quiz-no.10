# Set seed for reproducibility
set.seed(42)
 
# Simulate data
num_subscribers <- 1000
num_days <- 365
mean_comments_per_day <- 0.1
std_dev_comments_per_day <- 0.5

comments <- matrix(rnorm(num_subscribers * num_days, mean = mean_comments_per_day, sd = std_dev_comments_per_day), nrow = num_subscribers)

comments[comments < 0] <- 0  # Ensure no negative comments

# Calculate total comments for each subscriber
total_comments <- rowSums(comments)

# Test 1: Mean number of comments
mean_comments <- mean(total_comments)
print(paste("Test 1: Mean number of comments =", round(mean_comments, 2)))

# Test 2: Median number of comments
median_comments <- median(total_comments)
print(paste("Test 2: Median number of comments =", round(median_comments, 2)))

# Test 3: Standard deviation of comments
std_dev_comments <- sd(total_comments)
print(paste("Test 3: Standard deviation of comments =", round(std_dev_comments, 2)))

# Test 4: Percentage of subscribers with more than a threshold number of comments
threshold <- 100
percentage_above_threshold <- mean(total_comments > threshold) * 100
print(paste("Test 4: Percentage of subscribers with more than", threshold, "comments =", round(percentage_above_threshold, 2), "%"))

# Test 5: Interquartile range (IQR) of comments
q1 <- quantile(total_comments, 0.25)
q3 <- quantile(total_comments, 0.75)
iqr <- q3 - q1
print(paste("Test 5: Interquartile range (IQR) of comments =", round(iqr, 2)))
