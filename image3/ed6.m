close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
G = edge(I,'sobel');%edge������������Ե�����sobel��loG����canny��
subplot(121);
imshow(I);
title('ԭͼ��');
subplot(122);
imshow(G);
title('sobel��Ե����ͼ��');