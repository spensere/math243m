function [Q, A] = qr2(A)
    [m, n] = size(A);
    Q = eye(m);
    for j=1:n
        for i=j+1:m
            G=givens(A(j,j),A(i,j));
            A([j i],j:n)=G*A([j i],j:n);
            Q(:,[j,i])=Q(:,[j,i])*G';
        end
    end
    disp(A);