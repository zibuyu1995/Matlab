I=imread('11.jpg'); 
J=imcrop(I,[60 90 100 90]); %rgb2��imcrop(rgb��RECT)���Բ�ɫͼ����зǽ���ʽ����,RECT����Ԫ������[xmin ymin width height] 
%J=imcrop(I,[60 50 600 500]);
 
 figure,
subplot(311);imshow(I); title('ԭͼ'); 
subplot(312);imshow(J); title('���к�ͼ��');
%subplot(313);imshow(J); title('���к�1ͼ��');

I=imfinfo('11.jpg')
imwrite(J,'J1.jpg');
B=imfinfo('J1.jpg')