I=imread('11.jpg'); 
B1=imrotate(I,40,'nearest'); %���ڽ��岹
B2=imrotate(I,40,'bilinear');%˫���Բ岹 
B3=imrotate(I,40,'bicubic'); %˫�����岹
%���ַ����������ٶȲ�ͬ�����ʲ�ͬ���������ڽ��岹���Ļ�����
%ͼ����תʹ��B=imrotate(A,angle,method)
figure,
subplot(221);imshow(I); title('ԭͼ'); 
subplot(222);imshow(B1); title('��ת 40���ͼ��');
subplot(223);imshow(B2); title('��ת 40���ͼ��');
subplot(224);imshow(B3); title('��ת 40���ͼ��');

I=imfinfo('11.jpg')
imwrite(B1,'00.jpg');
B1=imfinfo('00.jpg')