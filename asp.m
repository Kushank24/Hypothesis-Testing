function [] = asp(n, t)
N = sum(sum(n));
%the code calculates the average/mean by summing over all the columns to create a row of sums and then summing across the row to get the total sum of the matrix
let = 0;
for i = 1:length(n)
    for j = 1:length(n)
        let = let + ( n(i,j) * log10((N*n(i,j))/(sum(n(i,:)) * sum(n(:,j))) ) );
    end
end
let = let * 2;

%df = (m-1)^2 = (3-1)^2 = 4
Prob = 1 - chi2cdf(let, 4);
[V,eigValues,W] = eig(t);   %[V,D,W] = eig(A,B) also returns full matrix W whose columns are the corresponding left eigenvectors, so that W'*A = D*W'*B.

The generalized eigenvalue problem is to determine the solution to the equation Av = λBv, where A and B are n-by-n matrices, v is a column vector of length n, and λ is a scalar. The values of λ that satisfy the equation are the generalized eigenvalues.
fprintf('Probability = %f\n', Prob);
%fprintf('%f\n', let);
eigValues
