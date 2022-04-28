% Assignment8:
% Task-->Read a color image, and do edge detection on it 
% reading orignal image
org = imread('a.png');
subplot(131);
imshow(org);title('Org Image');

%color to gray
a = rgb2gray(org);

%edge detection using sobel
BW1 = edge(a,'sobel');
subplot(132);
imshow(BW1);title('Sobel');

%edge detection using sobel
BW2 = edge(a,'canny');
subplot(133);
imshow(BW1);title('Canny');
