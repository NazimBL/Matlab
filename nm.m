x =0:1:100;
y=3*x;
%%plot(y);

a=2;
b=8;
N=3;

h=(b-a)/N;
sum=0;
for i=0:1:N-1
    xi=a+(i*h);
    sum=sum+y(xi);
  
end

sum=sum*h;

display(sum);


