I=imread('11.jpg'); 
B=imresize(I,1/3);  %B=imresize(A,m,method) ����ΪA��m��]��С��ͼ��
C=imresize(I,3,'nearest');
figure,
subplot(311);imshow(I); title('ԭͼ'); 
subplot(312);imshow(B); title('��С1/3��ͼ��');
subplot(313);imshow(C); title('�Ŵ�3����ͼ��');
disp('ԭͼ��Ҷ�ƽ��ֵ')
mean2(I);

  
I=imfinfo('11.jpg')
imwrite(B,'01.jpg');
B=imfinfo('01.jpg')
imwrite(C,'02.jpg');
C=imfinfo('02.jpg')