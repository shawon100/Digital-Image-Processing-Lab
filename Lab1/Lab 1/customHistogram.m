im=imread('football.jpg');
imR=im(:,:,1);


im3=1:1:256;

for k=1:256
    im3(k)=0;
end

for i=1:256
    for j=1:320
        im3(imR(i,j))=im3(imR(i,j))+1;
    end
end

X=1:1:256;
Y=im3(X);

figure(2),plot(X,Y);
