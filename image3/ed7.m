clear all;
f=imread('moon.tif');
w=fspecial('laplacian',0);%����Ԥ������˲�����
g1=imfilter(f,w,'replicate');%ͼ������˲���
subplot(221);
imshow(g1);
f2=im2double(f); 
g2=imfilter(f2,w,'replicate');
subplot(222);
imshow(g2,[]);
g=f2-g2;%ԭͼ��ȥ���˲����,�Ի�ԭʧȥ�ĻҶ�ɫ��
subplot(223);
imshow(g);
subplot(224);
imshow(f);
title('ԭͼ��');

