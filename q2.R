# Load required libraries
library(ggplot2)

# Plot histogram
ggplot(data.frame(total_comments), aes(x = total_comments)) +
  geom_histogram(binwidth = 20, fill = "skyblue", color = "black") +
  labs(x = "Number of Comments", y = "Frequency", title = "Distribution of Comments Posted by Subscribers") +
  theme_minimal()
 