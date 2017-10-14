im=imread('football.jpg');
imshow(im);
imR=im(:,:,1);
imG=im(:,:,2);
imB=im(:,:,3);
figure(1),imshow(imR);
figure(2),imshow(imG);
figure(3),imshow(imB);
figure(4),imhist(imR);
figure(5),imhist(imG);
figure(6),imhist(imB);

for i=1:256
    for j=1:320
      if imR(i,j)>60
          im2(i,j)=0;
      else
          im2(i,j)=255;
      end
   end
end

figure(7),imhist(im2);
figure(8),imshow(im2);

im3=1:1:256;

for c=1:256
    im3(c)=0;
end

for i=1:256
    for j=1:320
      im3(imR(i,j))=im3(imR(i,j))+1;
    end
end

X=1:1:256;
Y=im3(X);

figure(9),plot(X,Y);

im4=1:1:256;

for c=1:256
    im3(c)=0;
end

for i=1:256
    for j=1:320
      im4(imG(i,j))=im4(imG(i,j))+1;
    end
end

X=1:1:256;
Y=im4(X);

figure(9),plot(X,Y);

