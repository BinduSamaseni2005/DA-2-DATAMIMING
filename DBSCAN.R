# Explore and analyze the clusters as needed
# Load necessary libraries
library(dbscan)
library(ggplot2)
library(dendextend)

# Load the dataset
data <- read.csv("C:/Users/bindu/OneDrive/Pictures/Desktop/Customer DataSet.csv")

# Preprocess the data if necessary (scaling, removing NA values, etc.)
# Example:
# data <- na.omit(data) # remove NA values
# data <- scale(data)   # scale the data if necessary

# Perform Agglomerative Hierarchical Clustering
agglo_clustering <- hclust(dist(data), method = "ward.D2")

# Plot the dendrogram
dend <- as.dendrogram(agglo_clustering)
plot(dend, main = "Dendrogram of Agglomerative Clustering")

