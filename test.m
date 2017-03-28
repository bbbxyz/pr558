%L = 255-imread('ct_scan.jpg');
L=rgb2gray(imresize(imread('wall.png'), 1));
[w,h]=size(L);

scale1 = vness(L,1);
scale2 = vness(L,2);
scale3 = vness(L,3);
scale4 = vness(L,4);
scale5 = vness(L,5);
merged_scales = (scale1+scale2+scale3+scale4+scale5)/5;
subplot(1,2,1);
imshow(merged_scales);
subplot(1,2,2);
imshow(L);
imwrite(merged_scales, 'wall_filtered.png');
