delete(instrfind)
s=serial('COM15','BaudRate',9600);
fopen(s);
a=zeros;
c=zeros;

while(true)
    fscanf(s,'%s');
    a=fscanf(s,'%d');
    if a>100
        for i=1:15
            c(i)=fscanf(s,'%d');   
        end
        display(c)
    end
    r=corrcoef(b,c);
    display(r)
    
    if(r==1)fprintf(s,'%s','a'); 
    elsif(r==2)fprintf(s,'%s','b');
    else fprintf(s,'%s','k'); 
end

