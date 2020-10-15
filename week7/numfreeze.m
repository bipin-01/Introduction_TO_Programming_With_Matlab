%{ 
    @uthor:Bipin Poudel
    created on ; 10/15/2020
%}


function numfreeze = freezing(A)
    %w = [];
    %w = A(A<32);
    %numfreeze = length(w);
    %More optimized 
    A = A(A<32);
    numfreeze = length(A);
    
end