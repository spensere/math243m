function H = matrixH(n);
    H = zeros(n,n);
    C = ones(n,n);
    % make A and a little of C
    for i=1:n
        for j=1:n
            H(i,j)=1/(i+j);
            C(i,j)=(-1)^(i+j);
        end
    end