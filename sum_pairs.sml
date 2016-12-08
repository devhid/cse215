(*
  Takes a list of integers as its only argument.

  The function takes consecutive pairs of values, add them, and inserts the sums into a new list.

  If the original list has an odd length, then the first n-1 items are pairwise added,
  and the n-th item is simply copied as is at the end of the new list. 
*)

fun sumpairs(L) =
if L = nil then nil
else if length(L) = 1 then L
else (hd(L) + hd(tl(L)))::sumpairs(tl(tl(L)));
