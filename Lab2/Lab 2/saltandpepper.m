a=imread('saturn.png');
gr=rgb2gray(a);
n=imnoise(gr,'salt & pepper',0.02);
subplot(1,2,1);subimage(gr);title('Original Image');
subplot(1,2,2);subimage(n);title('Salt & Pepper Noise');