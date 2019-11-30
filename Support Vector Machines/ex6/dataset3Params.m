function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.01;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))

error = Inf;

possible_values = [0.01 0.03 0.1 0.3 1 3 10 30];

for C_i = 1:length(possible_values)
  for sigma_i = 1:length(possible_values)
    model= svmtrain(y, X, cstrcat('-t 2 -c ', num2str(C)));
    predictions = svmpredict(model, Xval);
    prediction_error =  mean(double(predictions ~= yval));
    if prediction_error < error
      error = prediction_error;
      C = possible_values(C_i);
      sigma = possible_values(sigma_i);
    end
  end
end
C
sigma



% =========================================================================

end
