function final2();
    n=100;
    C = ones(n,n);
    % populate the signs of C, the inverse
    for i=1:n
        for j=1:n
            C(i,j)=(-1)^(i+j);
        end
    end
    % make inverse matrix
    for i=1:n
        for j=1:n
           C(i,:)=C(i,:)*(i+j);
            if ~(j==i)
                C(i,:)=C(i,:)/(abs(j-i));
                C(:,j)=C(:,j)/(abs(j-i));
            end
            C(:,j)=C(:,j)*(i+j);                
            C(i,j)=C(i,j)/(i+j);
        end
    end 
    ev = 1/max(eig(C));
    ev=ev*10^151;
    fprintf( "The smallent eigenvalue of the 100x100 matrix H is %.16fe-151\n", ev);
    