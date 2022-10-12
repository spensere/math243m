function maxAvg = antiDiag(A)
   n=size(A)(1);
   sums = zeros(1,2*n-1);
   counts = zeros(1,2*n-1);
   for i=1:n
       for j=1:n
           k = i+j-1;
           sums(k) = sums(k) + A(i,j);
           counts(k) = counts(k) + 1;
        end
    end
    for i=1:(2*n-1)
        sums(i) = sums(i)/counts(i);
    end
    maxAvg = max(sums)
    
