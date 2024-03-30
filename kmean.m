% Read the data from the CSV file
data = readtable('Customer Dataset.csv');

% Select the 'BALANCE_FREQUENCY' column
numeric_data = data{:, 'BALANCE_FREQUENCY'};

% Get the size of the data
data_size = size(numeric_data, 1);

% Create the indices
indices = 1:data_size;

% Determine the number of clusters
num_clusters = min(3, data_size);

% Perform k-means clustering
[idx, centroids] = kmeans(numeric_data, num_clusters);

% Plot the results
figure;
scatter(indices, numeric_data, 50, idx, 'filled');
title('K-Means Clustering on BALNCE_FREQUENCY Data');
xlabel('Index');
ylabel('BALANCE_FREQUENCY');
colormap(hsv(num_clusters));
colorbar('Ticks', 1:num_clusters, 'TickLabels', cellstr(num2str((1:num_clusters)')));