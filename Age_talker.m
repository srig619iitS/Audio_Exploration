function a = under_age(age, limit)
if nargin < 2 || isempty(limit)
   limit = 21;
   if age < limit
       a = true;
   elseif age == limit
       a = false;
   else 
       a = false;
   end
end
if nargin == 2
    if age < limit
    a = true;
    elseif age == limit
    a = false;
    else 
    a = false;
    end
end
    