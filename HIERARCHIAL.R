# Load necessary libraries
library(cluster)

# Set the working directory
setwd("C:/Users/bindu/OneDrive/Pictures/Desktop")

# Read the dataset
data <- read.csv("Customer Dataset.csv")

# Compute distance matrix
dist_matrix <- dist(data)

# Perform hierarchical clustering
hc <- hclust(dist_matrix, method = "ward.D")

# Plot the dendrogram
plot(hc, main = "Dendrogram of Customer Dataset")

# Cut the dendrogram to form clusters
clusters <- cutree(hc, k = 5)  # Adjust 'k' as needed

# Add cluster labels to the dataset
data$cluster <- clusters

# View the first few rows of the dataset with cluster labels
head(data)
