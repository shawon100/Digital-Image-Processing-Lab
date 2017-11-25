im=imread('football.jpg');

imR=im(:,:,1);
imG=im(:,:,2);
imB=im(:,:,3);

figure(1),imshow(imR);
figure(2),imshow(imG);
figure(3),imshow(imB);

figure(4),imhist(imR);
figure(5),imhist(imG);
figure(6),imhist(imB);

