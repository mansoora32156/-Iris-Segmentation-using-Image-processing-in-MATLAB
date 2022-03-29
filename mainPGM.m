clc;
clear all;
I=imread('L.jpg');
%if the size of the image is small resize it
[m,n]=size(I);
if m<256 | n<512
    A=imresize(I,[256,512]);
else
    A=I;
end
eye=rgb2gray(A);
[ci,cp,out]=thresh(eye,80,800);
figure;
subplot(1,2,1),imshow(I);
title('original image');
subplot(1,2,2),imshow(out);
title('segmented image');