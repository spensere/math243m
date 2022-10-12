function U=cholesky(A)
    count=1;
    U=triu(A);
    n=size(A,1);
    for j=1:n
        for i=j+1:n
            count = count+1;
            count = count+(2*(n-i));
            t = U(j,i)/U(j,j);
            U(i,i:n) = U(i,i:n) - t*U(j,i:n);
        end
    end
    for j=1:n
        count = count + (2*(n-j));
        U(j,j:n)=U(j,j:n)/sqrt(U(j,j));
    end
    disp(count);