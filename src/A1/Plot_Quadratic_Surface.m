% Define matrix D and constant e0
D = [1, 0; 0, 3]; % Define the matrix D with values [1 0; 0 3]
e0 = 1; % Define the constant e0 as 1

% Define range and step size for w1 and w2
num_points = 100; % Number of points for each dimension
w1_values = linspace(-1, 1, num_points); % Generate 100 points evenly spaced between -1 and 1 for w1
w2_values = linspace(-1, 1, num_points); % Generate 100 points evenly spaced between -1 and 1 for w2

% Initialize array to store e values
e_values = zeros(num_points, num_points); % Initialize a matrix to store calculated e values

% Calculate e for each combination of w1 and w2
for i = 1:num_points
    for j = 1:num_points
        w = [w1_values(i); w2_values(j)]; % Create a vector [w1 w2]'
        e = w' * D * w + e0; % Calculate e = w' * D * w + e0
        e_values(i, j) = e; % Store the calculated e value in the matrix
    end
end

% Create grid of w1 and w2 values
[W1, W2] = meshgrid(w1_values, w2_values); % Create a grid of w1 and w2 values

% Create 3D surface plot
figure;
surf(W1, W2, e_values); % Plot the surface
xlabel('w1'); % Label x-axis as w1
ylabel('w2'); % Label y-axis as w2
zlabel('e'); % Label z-axis as e
title('Surface Plot of e as a function of w1 and w2'); % Set title
