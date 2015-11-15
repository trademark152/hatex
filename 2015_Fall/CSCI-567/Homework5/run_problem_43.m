clear all;
rng(1);
k=2;
data = load('hw5_circle.mat');
circle = data.points;
kernel = rbf_kernel(0.1, circle);
%kernel = poly_kernel(-5, 1, circle);
clusters = kernelkmeans(kernel);
scatter(circle(:,1), circle(:,2), [], clusters, 'filled');
print(sprintf('kcircle-%d',k), '-dpng');
