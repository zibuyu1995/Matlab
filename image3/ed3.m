close;clear;clc;
I = imread('lena.jpg');
I = rgb2gray(I);
%���Ա任
I = im2double(I);
k = 1.2;
t = linspace(0,1,256);%����0��1 256������ʸ��
if k > 0
    T1 = k.*t;
else
    T1 = k.*t + 1;
end
t = linspace(0,1,numel(T1));%����0��1 T1��Ԫ�������ĵ���ʸ��
G1 = interp1(t,T1,I);%��ֵ���������Ա任y=T1,X=z������I��ֵ
subplot(331);
imshow(G1);
title('���Ա任');
subplot(334);
plot(t,T1);
title('���Ա任����');
xlabel('����ֵ');
ylabel('���ֵ');
subplot(337);
imhist(G1);
title('���Ա任�Ҷ�ֱ��ͼ');

%�����任
c = 1;
t = 0:255;
T2 = c*log(t);
T2 = T2./max(T2);
z = linspace(0,1,numel(T2));
G2 = interp1(z,T2,I);
subplot(332);
imshow(G2);
title('�Աȶȱ任');
subplot(335);
plot(t/max(t),T2);
title('�Աȶȱ任����');
xlabel('����ֵ');
ylabel('���ֵ');
subplot(338);
imhist(G2);
title('�Աȶȱ任�Ҷ�ֱ��ͼ');

%�ݱ任
a = 2;
t = 0:255;
T3 = t.^a;
T3 = T3./max(T3);
z = linspace(0,1,numel(T3));
G3 = interp1(z,T3,I);
subplot(333);
imshow(G3);
title('�ݺ����任');
subplot(336);
plot(t/max(t),T3);
title('�ݺ����任����');
xlabel('����ֵ');
ylabel('���ֵ');
subplot(339);
imhist(G3);
title('�ݺ����任�Ҷ�ֱ��ͼ');


