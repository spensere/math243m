A=zeros(2,200);
for n=1:200
    A(1,n)=2*n-1;
    A(2,n)=2*n;
end
%disp(A);
n=3
while n < 200
    top = false;
    bottom = false;
    i=1;
    j=1;
    while ( ~top && i<=200 )
        r = mod( A(1,i), n);
        if ( r == 0)
            top = true;
        else
            i=i+1;
        end
    end
    %disp("top and i:");
    %disp(top);
    %disp(i);
    while ( ~bottom && j<=200 )
        s = mod( A(2,j), n);
        if ( s == 0)
            bottom = true;
        else
            j=j+1;
        end
    end
    %disp("bottom and j:");
    %disp(bottom);
    %disp(j);
    if ( top && bottom )
    %    disp("Dividing");
    %    disp(A(1,i));
    %    disp("and");
    %    disp(A(2,j));
    %    disp("by");
    %    disp(n);
        A(1,i)=(A(1,i)/n);
        A(2,j)=(A(2,j)/n);
    else
        n=n+2;
    end
end