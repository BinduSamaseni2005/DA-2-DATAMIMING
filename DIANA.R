# Install and load the required packages
if (!requireNamespace("cluster", quietly = TRUE)) {
  install.packages("cluster")
}
library(cluster)

# Read the dataset
data <- read.csv("C:/Users/Kiranmai Mulupuru/OneDrive/Desktop/Customer DataSet.csv")

# Perform hierarchical clustering with DIANA algorithm
diana_result <- diana(dist(data))

# Plot the dendrogram
plot(diana_result, hang = -1)

# Print the clustering result
print(diana_result)