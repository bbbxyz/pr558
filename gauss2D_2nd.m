function y = gauss2D_2nd(x, sig)
gauss = gauss_1d(x,sig);
gt = diff(gauss);
gtt = diff(gt);
y = gtt .* gtt';
