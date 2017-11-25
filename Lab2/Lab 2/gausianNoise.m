a=imread('saturn.png');
gr=rgb2gray(a);

n=imnoise(gr,'gaussian',0,0.025);

subplot(1,2,1);subimage(gr);title('Original Image');
subplot(1,2,2);subimage(n);title('Gaussian Noise');