function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% 
% Method #1: for loop
% sum = 0;
% for i = 1:m
%     h = X(i,:)*theta;
%     delta = h - y(i);
%     delta2 = delta^2;
%     sum = sum + delta2;
% end
% J = (1/(2*m))*sum;

% Method #2: matrix concatenation
hMat = X'.*repmat(theta,1,m); 
h = hMat(1,:) + hMat(2,:);
J = (1/(2*m))*((h - y')*(h - y')');

% =========================================================================

end
