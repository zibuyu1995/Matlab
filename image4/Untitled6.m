clc;clear;
A=imread('lena.jpg');
B=rgb2gray(A);
subplot(2,2,1);imshow(B);title('ԭ�Ҷ�ͼ');
C=imnoise(B,'salt & pepper',0.04);
subplot(2,2,2);imshow(C);title('��������ͼ��');
PSF=fspecial('motion',9,0); %PSFΪ����ɢ������Ĭ��
[K]=deconvblind(A,PSF);
subplot(2,2,3);imshow(K);title('ä�˲���ͼ��');