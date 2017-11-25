im=imread('football.jpg');
a=imresize(im,0.5,'nearest');
b=imresize(im,0.5,'bilinear');
c=imresize(im,0.5,'bicubic');
figure;
subplot(1,3,1);imshow(a);title('Nearest');
subplot(1,3,2);imshow(b);title('Bilinear');
subplot(1,3,3);imshow(c);title('Bicubic');
