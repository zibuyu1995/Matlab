clc;clear;
A=imread('lena.jpg');
B=rgb2gray(A);
subplot(2,2,1);imshow(B);title('ԭ�Ҷ�ͼ');
C=imnoise(B,'salt & pepper',0.04);
subplot(2,2,2);imshow(C);title('��������ͼ��');
PSF=fspecial('motion',9,2); %PSFΪ����ɢ������Ĭ��
J=deconvreg(A,PSF,1000);   %NSRΪ�����
subplot(2,2,3);imshow(J);title('����ά���˲���ͼ��');
K=deconvwnr(A,PSF,1);
subplot(2,2,4);imshow(K);title('�޹���ά���˲���ͼ��');