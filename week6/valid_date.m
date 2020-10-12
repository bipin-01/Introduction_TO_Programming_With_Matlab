function valid = valid_date(year, month, day)

%{      
        @uthor     : Bipin Poudel
        Created_ON : 2020/10/12

        ~~ date validate function
        ~~ Input  : date in for of year, month, day
        ~~ Output : Logical 1 if date is valid and logical 0 if date is invalid

%}



    if ( nargin <3)
        error("Error Enter 3 arguments as year, month, day");
        
   % after validating the number of the inputs argumensts the first things we do is the validate the inputs under certains contrains
   % like inputs should be scalar and cannot be negative, plus we cannot accept fractional value
   % Along with this we check for month and days in a month constraisn like month should range from 1-2 and days 1-31
   
    elseif ( ~isscalar(year)|| (year<1) || (year~=fix(year)))
        valid = false;
        return
    elseif (~isscalar(month) || month<1 || month~=fix(month) || month>12)
        valid = false;
        return
  
    elseif (~isscalar(day) || day<1 || day~=fix(day) || day>32)
        valid = false;
        return
    else
        
    %this portion of the code check for the leap year so that it can add an
    %extra day to feb month
    % indicating the general case of number of days in the month
    
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       
   % If leap year, change the number of days in Feb which is the second
   % month
   
       if isequal(rem(year, 4), 0) && (~isequal(rem(year, 100), 0) || isequal(rem(year, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(month);
       if day > maxDay
           valid = false;
       else
           valid = true;
       end
        
    end
    
end
