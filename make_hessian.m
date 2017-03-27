function y = make_hessian(s)
x = -20:1:20;
Gx = gradient(gauss_1d(x, s)) .* x;
Gy = x'.* gradient(gauss_1d(x, s))';
y = [Gx.*Gx' Gx.*Gy; Gx.*Gy Gy.*Gy'];
