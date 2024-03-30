# Install and load necessary packages
install.packages("cluster")
library(cluster)

# Set working directory
setwd("C:/Users/bindu/OneDrive/Pictures/Desktop/")

# Read the dataset
customer_data <- read.csv("Customer DataSet.csv")

# Perform any necessary data preprocessing here

# Compute distance matrix
dist_matrix <- dist(customer_data)

# Hierarchical clustering
hc <- hclust(dist_matrix, method = "ward.D")  # You can use other methods like "single", "complete", "average", etc.

# Plot dendrogram
plot(hc, main = "Dendrogram of Agglomerative Clustering", xlab = "Customers", sub = NULL, cex = 0.6)

# Use rect.hclust to draw rectangles around the clusters
rect.hclust(hc, k = 3)  # Adjust the number of clusters as needed
