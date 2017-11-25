A=imread('peppers.png');
B=rgb2gray(A);

C=double(B);


for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %Sobel mask for x-direction:
        Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
        %Sobel mask for y-direction:
        Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
     
        %The gradient of the image
        %B(i,j)=abs(Gx)+abs(Gy);
        B(i,j)=sqrt(Gx.^2+Gy.^2);
     
    end
end
figure,imshow(B); title('Sobel gradient');

[m,n]=size(B);

for i=1:m
    for j=1:n
        
        if(B(i,j)>100)
            im2(i,j)=0;
        else
            im2(i,j)=255;
        end
    end
end

figure(1),imshow(im2);