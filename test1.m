count=0;
index=0;
A=[1,1,2,3,2;
   1,5,2,3,2;
   1,4,2,3,2;
   1,2,2,4,5]

s =size(A);
B=[];

disp(A);

A=rref(A);
disp(A);
l=1;
for k=1:s(1)
    while l<=s(2)
    if(A(k,l)>1 || A(k,l)<0)
        %suprress column that has a number greater that 1 or less than 0
        A(:,l)=[];
        s=size(A);
    else l=l+1;        
    end
    end
end

disp(A);

