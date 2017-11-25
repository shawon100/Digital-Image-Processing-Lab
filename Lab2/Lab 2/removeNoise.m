a=imread('saturn.png');
gr=rgb2gray(a);

gr=im2double(gr);

n1=imnoise(gr,'gaussian',0,0.025);
n2=imnoise(gr,'salt & pepper',0.02);

mask=ones(3,3)/9;

r1=imfilter(n1,mask);
r2=imfilter(n2,mask);

r3=medfilt2(n1);
r4=medfilt2(n2);


figure(1);
subplot(2,2,1);imshow(n1);title('Gaussian Noise');
subplot(2,2,2);imshow(r1);title('After Removing Noise');
subplot(2,2,3);imshow(n2);title('Salt & Pepper Noise');
subplot(2,2,4);imshow(r2);title('After Removing Noise');

figure(2);
subplot(2,2,1);imshow(n1);title('Gaussian Noise');
subplot(2,2,2);imshow(r3);title('After Removing Noise (Median)');
subplot(2,2,3);imshow(n2);title('Salt & Pepper Noise');
subplot(2,2,4);imshow(r4);title('After Removing Noise (Median)');




