function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion.
% The bug occurs when performing element-wise operations with arrays of different sizes
% where implicit expansion leads to unexpected results.

A = [1; 2; 3];
B = [4, 5, 6];

% Incorrect implicit expansion
result = A .* B;  % MATLAB will perform implicit expansion here, potentially producing incorrect result

end