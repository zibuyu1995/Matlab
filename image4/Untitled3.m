I=imread('lena.jpg');
B=imcrop(I,[100 90 350 200]); %rgb2��imcrop(rgb��RECT)���Բ�ɫͼ����зǽ���ʽ����,
%RECT����Ԫ������[xmin ymin width height] ���磺rgb2��imcrop(rgb��[100 100 80 10])
subplot(121);imshow(I); title('ԭͼ'); 
subplot(122);imshow(B); title('����ͼ');

B=rand(640,480)  %��B��Ԫ�ظ�ֵ
%B=rand(1,1) 
imwrite(B,'123.jpg');
B=imfinfo('123.jpg')