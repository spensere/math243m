function count = countFlops(n)
   count = 0;
   for i=n-1:-1:1
       for j=i+1:n
           count = count+2;
        end
    end
    count=count+1;
end