function valid = valid_date(year, month, day)
if ~isscalar(year) || year < 1 || year ~= fix(year)
    valid = false;
elseif ~isscalar(month) ||month < 1 || month > 12 || month ~= fix(month)
    valid = false;
elseif ~isscalar(day) || day < 1 || day >31 || day ~= fix(day)
    valid = false;
elseif ((month == 1 ||month == 3 ||month == 5 ||month == 7 ||month == 8 ||month == 10 ||month == 12) && ( day <= 31) && rem(year,1) == 0  )
    valid = true;
elseif ((month == 4 ||month == 6 ||month == 9 ||month == 11) && day <= 30 && rem(year,1) == 0  )
    valid = true;
elseif (month == 2 && rem(year, 400) == 0 && ( day <= 29))
    valid = true;
elseif (month == 2 && rem(year, 4) == 0 && rem(year, 100) ~= 0 && ( day <= 29))
    valid = true;
elseif month == 2 && ( day <= 28)
    valid = true;
else
    valid = false;
end
        
        
        
        
        