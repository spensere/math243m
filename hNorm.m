% v array is numerical, u array analytic solution
% h is space interval
function norm = hNorm(u,v,h);
    m=size(u,2);
    n=size(v,1);
    sum = 0;
    for i=1:m
        sum = sum + (v(n,i)-u(i))^2;
    end
    sum = h*sum;
    sum = sqrt(sum);
    norm = sum;
    
