A=imread('lenna.jpg');
figure   %����ͼ��
B=rgb2gray(A);%��Aת��Ϊ�Ҷ�ͼ��Bʹ��
subplot(1,3,1),%��B����1��3�е�ƽ���ϣ���һ�е�һ�У������ҵ�һ��λ��
imshow(B)%��ʾBͼ
title('�Ҷ�ͼ��')%��Bͼ��һ�����⡰�Ҷ�ͼ��
[A1,map]=gray2ind(B,63);%����С����������Bת��Ϊ����ͼ��A1��map�����ٺ���63����ɫ
subplot(1,3,2),
imshow(A1,map)
title('�Ҷ�ͼ�������ͼ��')
RGB=ind2rgb(A1,map)%����ͼת��Ϊ��ɫͼ
subplot(1,3,3)
imshow(RGB);
title('����ͼ����ɫͼ��')
