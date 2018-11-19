%Step 1 of algorithm Bicubic interpolation
clc;
close all;
i=imread('image.jpeg');
j2=imresize(i,0.5,'bicubic');
%Step 2 of algo to Zoom image
c=zoomver(j2);
subplot(1,2,1);
imshow(j2),title('original');
subplot(1,2,2);
imshow(c),title('Zoomed image');
%To display pixel info
imtool(c)
c1=c;
%Now extract the required area
I2 = imcrop(c1,[297 302 100 80]);
imshow(I2);
%To capture pixel intensity of complete image 
I3=capture_intensity(I2);
imshow(I3)
I4=seg_black_white(I3);
fprintf(I4);




    
          
                   
                                
                    
                




