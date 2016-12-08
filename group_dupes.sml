(*
  Takes a list of integers as its only argument.

  The function takes runs of values (i.e., consectuive, duplicated values) in the list
  and copies those runs into separate sublists, returning a list of those sublists.
*)

fun groupdupes(L) =
if L = [] then []
else [List.take(L, countdupes(L, hd(L)))] @ groupdupes(List.drop(L, countdupes(L, hd(L))));


(*
  Helper method that counts consecutive duplicate occurences for "element" in the integer list.
*)

fun countdupes(L:int list, element) =
if L = nil then 0
else if hd(L) <> element then 0
else 1 + countdupes(tl(L), element);
