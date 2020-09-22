%{ 
    @uthor:Bipin Poudel
%}
function T = trio(n,m)
    T = ones(3*n, m);
    T(n+1:2*n,1:end) = 2;
    T(2*n+1:end,1:end) = 3;