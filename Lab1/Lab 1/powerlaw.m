A=input('Enter Constant Value=');
x=input('Enter gamma value=');
a=imread('cameraman.tif');
[m,n]=size(a);

for i=1:m
    for j=1:n
        
        s(i,j)=A*(a(i,j)^x);
    end
end

figure,
subplot(1,2,1);subimage(a);title('Original Image');
subplot(1,2,2);subimage(s);title('Power Law Transform');xlabel(sprintf('Constant is %g',A));
xlabel(sprintf('Gamma is %g',x));