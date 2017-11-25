A=input('Enter the value of constant A=');
a=imread('cameraman.tif');
[m,n]=size(a);
b=im2double(a);

for i=1:m
    for j=1:n
        
        r=b(i,j);
        s(i,j)=A*log(r+1);
    end
end

figure,
subplot(1,2,1);subimage(a);title('Original Image');
subplot(1,2,2);subimage(uint8(s));title('Log Transform');xlabel(sprintf('Constant is %g',A));