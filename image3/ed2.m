close;clear;clc;
I = imread('redbloodcell.tif');
T = histeq(I);%ֱ��ͼ���⻯
subplot(221);
imshow(I);
title('����ǰͼ��');
subplot(222);
imshow(T);
title('������ͼ��');
subplot(223);
imhist(I);
title('����ǰֱ��ͼ');
subplot(224);
imhist(T);
title('������ֱ��ͼ');