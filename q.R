library(openssl)

# Calculate the MD5 hash of "Monica"
hash <- openssl::md5("Monica")
hash


##////////////////////////////////////////////////////////////////

# Install and load the palmerpenguins package
install.packages("palmerpenguins")
library(palmerpenguins)
install.packages("arrow")


# Load the vroom package
install.packages("vroom")
library(vroom)

# Load the penguins dataset
data("penguins")

# Save as CSV file
write.csv(penguins, "penguins.csv", row.names = FALSE)

# Save as Parquet file
vroom_write_parquet(penguins, "penguins.parquet")

# Check file sizes
csv_size <- file.info("penguins.csv")$size
parquet_size <- file.info("penguins.parquet")$size

# Convert sizes to MB
csv_size_mb <- csv_size / (1024 * 1024)
parquet_size_mb <- parquet_size / (1024 * 1024)

# Print sizes
cat("CSV file size:", round(csv_size_mb, 2), "MB\n")
cat("Parquet file size:", round(parquet_size_mb, 2), "MB\n")






# Load the palmerpenguins package (if not already installed)
if (!requireNamespace("palmerpenguins", quietly = TRUE)) {
  install.packages("palmerpenguins")
}
library(palmerpenguins)

# Load the dataset
data("penguins")

# Save the dataset as a Parquet file using arrow
arrow::write_parquet(penguins, "penguins_data.parquet")

# Check the file size
file.info("penguins_data.parquet")$size
