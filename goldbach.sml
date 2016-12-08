fun isprime(n, index) =
if index * index > n then true
else if n mod index = 0 then false
else isprime(n, index + 1);

fun testprime(n) = isprime(n, 2);

fun sumprime(n, x, y) =
if x + y = n andalso testprime(x) andalso testprime(y) then [x, y]
else sumprime(n, x + 1, y - 1);

fun goldbach(x) = sumprime(x, 0, x);