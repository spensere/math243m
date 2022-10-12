function A=lunpExpert(A)
    n=size(A,1);
    for j=1:n
        for i=j+1:n
            A(i,j)=A(i,j)/A(j,j);
            A(i,j+1:n)=A(i,j+1:n)-A(i,j)*A(j,j+1:n);
        end
    end