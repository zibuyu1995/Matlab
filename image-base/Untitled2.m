I=imread('lenna.jpg');
J=rgb2gray(I);%��Iת��Ϊ�Ҷ�ͼ��Jʹ��
subplot(2,3,1),imshow(J);title('�Ҷ�ͼ��')%��B����2��3�е�ƽ���ϣ���һ�е�һ�У������ҵ�һ��λ�ã���ʾBͼ����Bͼ��һ�����⡰�Ҷ�ͼ��
J=double(J);%������ֵת��Ϊ��������˫����
[m,n]=size(J);%ȡ����ͼ��I���ĳ��Ϳ�
sumg=0.0;
for i=1;m;%ѭ����i��ֵ��1ȡ��m
for j=1;n;
sumg=sumg+J(i,j);
end
end
avg=sumg/(m*n)
maxg=max(max(J))
ming=min(min(J))
whos; 
