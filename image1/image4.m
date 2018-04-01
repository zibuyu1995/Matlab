close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
G1 = imadjust(I,[0 1],[1 0]);
G2 = imadjust(I,[0.25 0.75],[0 1]);
G3 = imadjust(I,[0 1],[0 1],2);
subplot(241);
imshow(G1);
title('图像翻转');
subplot(242);
imshow(G2);
title('图像拉伸');
subplot(243);
imshow(G3);
title('图像增强');
subplot(244);
imshow(I);
title('原图像');
subplot(245);
imhist(G1);
title('翻转灰度直方图');
subplot(246);
imhist(G2);
title('拉伸灰度直方图');
subplot(247);
imhist(G3);
title('增强图像灰度直方图');
subplot(248);
imhist(I);
title('原图像灰度直方图');