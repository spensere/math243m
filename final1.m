function final1()
    A=zeros(2,200);
    for n=1:200
        A(1,n)=2*n-1;
        A(2,n)=2*n;
    end
    for i=1:200
        A(1,i)=A(1,i)/A(2,i);
    end
    p =1;
    for i=1:200
        p = p*A(1,i);
    end
    fprintf( "The fraction reduces to %.16f\n", p );