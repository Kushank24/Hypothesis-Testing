function [] = asp(n, t)
N = sum(sum(n));
%the code calculates the average/mean by summing over all the columns to create a row of sums and then summing across the row to get the total sum of the matrix
% N = 108;
% n = [175,49; 48,96];
% n = [15,11,11; 5,6,12; 16,7,20];
let = 0;
for i = 1:length(n)
    for j = 1:length(n)
        let = let + ( n(i,j) * log10((N*n(i,j))/(sum(n(i,:)) * sum(n(:,j))) ) );
    end
end
let = let * 2;

%df = (m-1)^2 = (3-1)^2 = 4
Prob = 1 - chi2cdf(let, 4);
[V,eigValues,W] = eig(t);
fprintf('Probability = %f\n', Prob);
%fprintf('%f\n', let);
eigValues
