function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

//This program compiles and runs without error. However it can cause an integer overflow if the integer is too large.
//The function foo adds 1 to x. If x is the maximum value of an int, then x+1 will overflow and become a negative number.
//The function bar doubles the result of foo. If foo returns the minimum value of an int, then bar will cause an overflow and become a positive number.
//The function baz subtracts 1 from the result of bar. If bar returns the maximum value of an int, then baz will cause an overflow and become a negative number.
//Thus, the program can cause integer overflow for certain input values, leading to unexpected or incorrect results.