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
cnt = zeros(K, 1); %记录每个头包含多少样本

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%this version loop over the examples for one time
% for i = 1 : m
	% centroids(idx(i), :) = centroids(idx(i), :) + X(i, :);
	% cnt(idx(i)) = cnt(idx(i)) + 1;
% end
% centroids = centroids ./ cnt;

%another version without loop over the examples
for i = 1 : K
	temp = find(idx == i);
	centroids(i, :) = sum(X(temp, :)) / size(X(temp, :), 1);
end







% =============================================================


end

