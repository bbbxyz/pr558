function [Lxx,Lyy,Lxy] = make_hessian(L, s)
%computes the hessian at scale s for every pixel in an image L

X = [-3*s:1:3*s];
Y=X';
Gxx = 1/(2*pi*s^4) * (X.^2/s^2 - 1) .* exp(-(X.^2 + Y.^2)/(2*s^2));
Gxy = 1/(2*pi*s^6) * (X .* Y)           .* exp(-(X.^2 + Y.^2)/(2*s^2));
Gyy = Gxx';
Lxx = conv2(L,Gxx,'same');
Lyy = conv2(L,Gyy,'same');
Lxy = conv2(L,Gxy,'same');


