function y = gauss_1d(x, sig)
  y = 1/(sqrt(2*pi)*sig) * exp(- (x.^2) / (2*sig^2));
