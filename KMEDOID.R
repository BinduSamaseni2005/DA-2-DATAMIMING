# Install and load the required packages
install.packages("cluster")
library(cluster)

# Read the dataset
data <- read.csv("C:/Users/Kiranmai Mulupuru/OneDrive/Desktop/Customer DataSet.csv")

# Select relevant columns for clustering (if needed)
# For example, if you only want to use columns 3 and 4 for clustering
# data <- data[, c(3, 4)]

# Perform k-medoids clustering with k clusters
set.seed(123)  # For reproducibility
kmedoids_result <- pam(data, k = 3)  # Assuming you want to cluster into 3 groups

# Print the clustering result
print(kmedoids_result)

# Plot the clustering result (if possible)
# Note: Plotting depends on the number of dimensions/features in your dataset
# For example, if your dataset has 2 features, you can plot the clusters
# plot(data, col = kmedoids_result$cluster)