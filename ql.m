function [Q, A] = ql(A)
    [m, n] = size(A);
    Q = eye(m);
    for j=2:n
        for i=1:j-1
            G=givens(A(j,j),A(i,j));
            A([j i],j:n)=G*A([j i],j:n);
            Q(:,[j,i])=Q(:,[j,i])*G';
        end
    end
    disp(A);