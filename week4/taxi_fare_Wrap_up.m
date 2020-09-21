%{ 
    @uthor:Bipin Poudel
%}
function fare = taxi_fare(distance, minute)
    fare = 5 + ceil(distance-1)* 2 + ceil(minute) * 0.25;
end