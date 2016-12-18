(*
  Set intersection function where two lists are compared to see if any elements are shared.
  
  The common elements are extracted into a separate list and is returned.
  
  The two lists for arguments are assumed to have no duplicate elements.
*)

fun intersection(X, Y) = intersect_loop(X, Y, 0);

(* Helper method that iterates through second list to find matching elements in the first list.*)
fun intersect_loop(X, Y, index) =
if X=nil orelse Y=nil then nil
else
    if hd(X) = List.nth(Y, index) then hd(X)::intersect_loop(tl(X), Y, 0)
    else 
       if index = (length(Y) - 1) then intersect_loop(tl(X), Y, 0)
       else intersect_loop(X, Y, index + 1);
