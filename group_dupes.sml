fun countdupes(L:int list, element) =
if L = nil then 0
else if hd(L) <> element then 0
else 1 + countdupes(tl(L), element);

fun groupdupes(L) =
if L = [] then []
else [List.take(L, countdupes(L,hd(L)))] @ groupdupes(List.drop(L, countdupes(L,hd(L))));