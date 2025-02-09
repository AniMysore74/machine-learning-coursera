function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    r1 = X(:,1)'*(X*theta-y);
    r2 = X(:,2)'*(X*theta-y);
    t1_temp = theta(1) - (alpha/m)*sum(r1);
    t2_temp = theta(2) - (alpha/m)*sum(r2);
    theta(1) = t1_temp;
    theta(2) = t2_temp;
    %theta

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %J_history(iter)
end

end
