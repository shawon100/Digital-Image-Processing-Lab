im=imread('football.jpg');
imR=im(:,:,1);

for i=1:256
    for j=1:320
        
        if(imR(i,j)>60)
            im22(i,j)=255;
        else
            im22(i,j)=0;
        end
    end
end

figure(1),imshow(im22);



