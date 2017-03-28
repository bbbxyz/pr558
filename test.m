%L = imread('ct_scan.jpg');
L=rgb2gray(imread('wall.png'));
[w,h]=size(L);
%filtered = zeros(10,w,h);
min_range=2;
max_range=4;
imshow(vness(L,4));
