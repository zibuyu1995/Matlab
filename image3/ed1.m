close;clear;clc;
I = imread('lena.jpg');
gray = rgb2gray(I);
T1 = gray + 20;%�������20
T2 = gray - 40;%���Ƚ���40
subplot(221);
imshow(T1);
title('�������20���ͼ��');
subplot(222);
imshow(T2);
title('���Ƚ���40���ͼ��');
subplot(223);
imhist(T1);%ֱ��ͼ��ʾ
title('�������20��ֱ��ͼ');
subplot(224);
imhist(T2);
title('���Ƚ���40��ֱ��ͼ');
