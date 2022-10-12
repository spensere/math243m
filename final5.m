function final5();
    n=5;
    % base elemenet of V
    v=[1:1:n];
    V = vander(v);
    % Empty Inverse
    W=zeros(n,n);
    % Table of Sterling numbers
    S=zeros(n,n);
    for i=1:n
       S(i,1)=factorial(i-1);
       for j=2:n
          if(j-1==0 || i-1==0)
              S(i,j)=0;
          else
              S(i,j)=(i-1)*S(i-1,j)+S(i-1,j-1);
          end
       end
    end
    % Can now use explicit formula to calculate entries of inverse
    for i=1:n
        for j=1:n
            m=max(i,j);
            for k=m:n
                t=S(k,j);
                t=t*(-1)^(i+j);
                t=t/factorial(k-1);
                t=t*nchoosek(k-1,i-1);
                W(j,i)=W(j,i)+t;
            end
        end
    end
    % It seems to prefer a breech birth
    W=flipud(W);
    ev = 1/max(eig(W));
    fprintf( "The smallent eigenvalue of the 30x30 Vandermonde Matrix V is %.16f\n", ev );
    
    