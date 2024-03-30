# Install and load necessary packages
install.packages("cluster")
library(cluster)

# Load the dataset
customer_data <- read.csv("C:/Users/bindu/OneDrive/Pictures/Desktop/Customer DataSet.csv")

# Check the structure of the dataset
str(customer_data)

# Assuming your dataset has appropriate columns for clustering, you may need to preprocess it accordingly.

# Select relevant columns for clustering (if necessary)
# For example, if you have numeric columns that you want to use for clustering:
# customer_data <- customer_data[, c("column1", "column2", ...)]

# Perform hierarchical clustering
dist_matrix <- dist(customer_data)
hc_result <- hclust(dist_matrix, method = "complete")  # You can change the method as per your requirement

# Plot the dendrogram
plot(hc_result, cex = 0.6)  # Adjust the size of labels if necessary

# Cut the dendrogram to get clusters
cut_tree_result <- cutree(hc_result, k = 3)  # Change 'k' to the number of clusters you want

# View cluster membership
cut_tree_result

# Assess clustering quality (if applicable)
# You may want to evaluate the silhouette width, for example:
sil_width <- silhouette(cut_tree_result, dist_matrix)
summary(sil_width)

# Additional analysis and interpretation can be performed based on your specific requirements and dataset characteristics.
