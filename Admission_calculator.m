function a = eligible(v,q)
average_p = (v + q)/ 2;
if average_p >= 92
    if v > 88 && q > 88
        a = true;
    elseif v > 88 && q <= 88
        a = false;
    else v <= 88 && q > 88
        a = false;
     end
else 
    a = false
end