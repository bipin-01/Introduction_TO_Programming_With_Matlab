%{ 
    @uthor:Bipin Poudel
%}

function admit = eligible(v, q)
    average = (v+q)/2;
    if average >=92 && v>88 && q>88
        admit = true;
    else
        admit = false;
    end
end