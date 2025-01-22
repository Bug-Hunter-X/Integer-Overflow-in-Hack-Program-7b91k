function foo(x: int): int {
  if (x > 2147483646) { // Check for potential overflow
    throw new OverflowError();
  }
  return x + 1;
}

function bar(x: int): int {
  if (x < -2147483647) { // Check for potential overflow
    throw new OverflowError();
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x > 2147483647) { // Check for potential overflow
    throw new OverflowError();
  }
  return bar(x) - 1;
}

function main(): void {
  try {
    echo baz(5);
  } catch (e: OverflowError) {
    echo "Integer overflow occurred!";
  }
}
class OverflowError {
} 