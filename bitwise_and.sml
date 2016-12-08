fun convertbin(x) =
if x < 1 then nil 
else convertbin(x div 2) @ [x mod 2];

fun eightbit(L) =
if length(L) = 8 then L
else eightbit(0::L);

fun fullbin(x) = eightbit(convertbin(x));

fun compare(x, y) =
if x = 1 andalso y = 1 then 1
else 0;

fun bitwise_loop(x, y, index) = 
if index = 8 then []
else compare(List.nth(fullbin(x), index), List.nth(fullbin(y), index))::bitwise_loop(x, y, index + 1);

fun bitwise_and(x, y) = bitwise_loop(x, y, 0);