L = imread('ct_scan.jpg');
[w,h]=size(L);
filtered = zeros(w,h,10);
x = -20:1:20;
for i = 1:5,
    s = i;
    H = make_hessian(s);
    filtered(:,:,i) = s^2 * conv2(L,H,'same');
    size(filtered(:,:,i))
    sleep(1)
end

