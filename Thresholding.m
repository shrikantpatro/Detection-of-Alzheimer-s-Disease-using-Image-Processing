function im= Thresholding(i)
[r,c]=size(i);
im=zeros(r,c);
for i1=1:r
    for j=1:c
      if i(i1,j) > 105
          im(i1,j)= 1;
      end
    end
end
im = bwareopen(im,5);
im = imfill(im,'holes');
end 
