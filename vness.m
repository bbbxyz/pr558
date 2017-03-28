function v = vness(L, s)
[w,h]=size(L);
[Lxx,Lyy,Lxy] = make_hessian(L,s);

%calculate eigenvalues
eigens = zeros(w,h,2);
S = zeros(w,h);
R_b = zeros(w,h);
v = zeros(w,h);
alpha = 0.5;
beta = 0.5;
c = 0.5 * max(max(max([Lxx,Lxy,Lyy])));
for i =[1:w],
    for j = [1:h],
        A = [Lxx(i,j), Lxy(i,j);Lxy(i,j), Lyy(i,j) ];
        e = sort(eig(A));
        e1 = e(1);
        e2 = e(2);
        eigens(i,j,:) = e(:); 
        S(i,j) = sqrt(e1.^2 + e2.^2);
        R_b(i,j) = e1 / e2;
        if(e2>0),
            v(i,j) = exp(-R_b(i,j).^2 /(2*beta^2)) * (1-exp(-S(i,j)^2 /(2*c^2)));
        end
    end
end
