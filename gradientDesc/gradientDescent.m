function theta = gradientDescent(X, y, theta, alpha, num_iters)
    m = length(y); 
    for iter = 1:num_iters
        h = X * theta;
        gradient = (1/m) * (X' * (h - y));
        theta = theta - alpha * gradient;
        if mod(iter, 100) == 0
            J = computeCost(X, y, theta);
            fprintf('Cost after iteration %d: %f\n', iter, J);
        end
    end
end
