fun sumpairs(L) =
if L = nil then nil
else if length(L) = 1 then L
else (hd(L) + hd(tl(L)))::sumpairs(tl(tl(L)));