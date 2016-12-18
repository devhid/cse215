(*
  A bitwise AND takes two equal-length binary representations and performs the logical AND operation 
  on each pair of the corresponding bits. 

  Thus, if both bits in the compared position are 1, the bit in the resulting binary representation is 1. 
  Otherwise, the result is 0. 

  Takes two integers as parameters and returns the 8-bit bitwise AND of the two integers' binary representations 
  as a list of 1s and 0s. 

  Both parameters are assumed to be in the range 0 through 255, inclusive.
*)

fun bitwise_and(x, y) = bitwise_loop(x, y, 0);

(* Helper method that converts x, an integer, into its binary representation as a list *)
fun convertbin(x) =
if x < 1 then nil 
else convertbin(x div 2) @ [x mod 2];

(* Helper method that converts the binary list into 8-bit representation *)
fun eightbit(L) =
if length(L) = 8 then L
else eightbit(0::L);

(* Helper method that returns the full 8-bit binary representation by invoking convertbin(x) inside eightbit(L) *)
fun fullbin(x) = eightbit(convertbin(x));

(* Helper method that performs the bitwise-and operation on x and y assuming they are in the range [0, 1] *)
fun compare(x, y) =
if x = 1 andalso y = 1 then 1
else 0;

(* Iterates through the binary representations of both x and y and concatenates the bitwise-and result into a list. *)
fun bitwise_loop(x, y, index) = 
if index = 8 then []
else compare(List.nth(fullbin(x), index), List.nth(fullbin(y), index))::bitwise_loop(x, y, index + 1);
