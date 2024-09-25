x = 15;
vetor=[x];
while( x~=1)
    if(mod(x,2) == 0)
        x = x/2;
    else 
        x = 3*x+1;
    end
    vetor = [vetor x];
end
plot(vetor, '*')     