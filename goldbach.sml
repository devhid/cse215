(*
  Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers.
  
  Takes a single positive, even integer as its parameter and returns a list containing the two prime numbers 
  that sum to the parameter. 
  
  The parameter is assumed to be a positive, even integer.
*)

(* We use 0 and x as the parameters for x and y because the range of numbers we can check must be between 0 and x inclusive *)
fun goldbach(x) = sumprime(x, 0, x);

(* Helper method for "testprime(n)" to check if a number is prime using abstract index *)

fun isprime(n, index) =
if index * index > n then true
else if n mod index = 0 then false
else isprime(n, index + 1);

(* Helper method that checks if a number is prime using index = 2 *)

fun testprime(n) = isprime(n, 2);

(* Helper method that goes through possible combinations of x and y where x and y = n and x and y are prime. *)
fun sumprime(n, x, y) =
if x + y = n andalso testprime(x) andalso testprime(y) then [x, y]
else sumprime(n, x + 1, y - 1);

