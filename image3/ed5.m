close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
N = imnoise(I,'salt & pepper');%��ӽ�������Ĭ��Ϊ0.5
H = fspecial('average');%�����ξ�ֵ��Ĥ
G1 = imfilter(N,H);%��ֵ�˲�
G2 = medfilt2(N);%2ά��ֵ�˲�
subplot(221);
imshow(I);
title('ԭͼ��');
subplot(222);
imshow(N);
title('�ӽ�������ͼ��');
subplot(223);
imshow(G1);
title('��ֵ�˲�ͼ��');
subplot(224);
imshow(G2);
title('��ֵ�˲�ͼ��');
