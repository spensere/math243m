disp("Hello World");
A = pascal(400);
n=size(A)(1)
m=size(A)(2)
l = 1;
k = 1;
max = 0;
pos_i=1;
pos_j=1;
index=16000
while index>10000
    for i=1:n
        for j=i:m
            if A(i,j)>max
                max=A(i,j);
                pos_i=i;
                pos_j=j;
            end    
        end
    end
    A(pos_i,pos_j)=0;
    if pos_i=pos_j
        index=index-1
    else
        index=index-2
    end
end
%X = [x, ' at ', pos_i, pos_j];
X = sprintf('%d at %d, %d.',max,pos_i,pos_j);
disp(X);