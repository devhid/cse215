fun intersection(X, Y) = intersect_loop(X, Y, 0);

fun intersect_loop(X, Y, index) =
if X=nil orelse Y=nil then nil
else
    if hd(X) = List.nth(Y, index) then hd(X)::intersect_loop(tl(X), Y, 0)
    else 
       if index = (length(Y) - 1) then intersect_loop(tl(X), Y, 0)
       else intersect_loop(X, Y, index + 1);