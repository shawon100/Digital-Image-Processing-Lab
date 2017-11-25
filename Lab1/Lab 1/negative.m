imc=imread('cameraman.tif');

[m,n]=size(imc);

for i=1:m
    for j=1:n
        
        s(i,j)=256-1-imc(i,j);  % s=l-1-r
    end
end

subplot(1,2,1);imshow(imc);title('Original Image');
subplot(1,2,2);imshow(s);title('Negative Image');