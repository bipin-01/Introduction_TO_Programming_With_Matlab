%{ 
    @uthor:Bipin Poudel
%}

function [mmr, mmm] = minimax(M)
    mmr = [abs(max(M, [], 2) - min(M, [], 2))]';
    v = M(:);
    mmm = max(v) - min(v);