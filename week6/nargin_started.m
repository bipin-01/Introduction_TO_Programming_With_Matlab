%{ 
    @uthor:Bipin Poudel
%}

function too_young= under_age(age, limit)
    if nargin<=1
        limit = max(21, age);
        if age<limit
            too_young =  true;
        else
            too_young = false;
        end
    
    elseif age<limit
        too_young= true; 
    else
        too_young = false;
    end
end