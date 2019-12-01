function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
% exemple_and_their_centoid = [X, idx];
%
% for centroid_i = 1:size(centroids, 1)
%   sum_of_exemple = sum(exemple_and_their_centoid(exemple_and_their_centoid(:,3) == centroid_i,:))
%   centroids(centroid_i,:) = sum_of_exemple(1:2).*(1/(sum_of_exemple(3)/centroid_i));
% end

for centroid_i = 1:size(centroids, 1)
  centroids(centroid_i,:) = mean(X(find(idx == centroid_i),:));
end


% =============================================================


end
