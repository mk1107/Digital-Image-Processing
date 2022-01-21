% reading orignal image
org = imread('a.png');
imshow(org);
pause(3);

% original to grayscale
% gr1 = rgb2gray(org);
% imshow(gr1);
% pause(3);
gr2 = (org(:,:,1)/3 + org(:,:,2)/3 + org(:,:,3)/3);
imshow(gr2);
pause(3);

% converting into binary image
s = size(gr2);

for i = 1:s(1)
    for j = 1:s(2)
        if gr2(i,j) >= 127
            b(i,j) = 1;
        else
            b(i,j) = 0;
        end
        
    end
end

imshow(b);
pause(3);

% RGB + binary

rb1 = org + uint8(b);
imshow(rb1);
pause(3);

% RGB + 20

rb2 = org + uint8(20);
imshow(rb2);
pause(3);

