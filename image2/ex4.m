clear all;
D0 = 20;%�����ֵΪ20
I = imread('cameraman.tif');
F = fft2(I);
F2 = fftshift(F);
subplot(231);
imshow(I);
title('ԭͼ');
subplot(232);
imshow(log(abs(F) + 1),[0 10]);
title('2D-FFT�˲�ǰ');
subplot(233);
H1=zeros(256);
H1(D0:256-D0,D0:256-D0)=1;%��256-20 ͼ�������һ
F3=F.*H1;%��ͨ�˲�
imshow(log(abs(F3) + 1),[0 10]);
title('2D-FFT��ͨ�˲���');
subplot(234);
IF1 = ifft2(F3);
IF1 = uint8(IF1);
imshow(IF1);
title('��ͨ�˲���IFFT2');
subplot(235);
H2=ones(256);
H2(D0:256-D0,D0:256-D0)=0;
F4=F.*H2;
imshow(log(abs(F4) + 1),[0 10]);
title('2D-FFT��ͨ�˲���');
subplot(236);
IF2 = ifft2(F4);
IF2 = uint8(IF2);
imshow(IF2);
title('��ͨ�˲���IFFT2');
