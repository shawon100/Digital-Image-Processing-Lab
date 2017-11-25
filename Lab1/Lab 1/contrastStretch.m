x=input('Enter factor value=');
a=imread('cameraman.tif');
[m,n]=size(a);

for i=1:m
    for j=1:n
        
        s(i,j)=x*(a(i,j));
    end
end

figure,
subplot(1,2,1);subimage(a);title('Original Image');
subplot(1,2,2);subimage(s);title('Contrast Stretching');xlabel(sprintf('Factor is %g',x));