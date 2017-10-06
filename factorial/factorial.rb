def factorial_iterative(n)
  return 1 if n <= 1
  (1..n).inject(:*)
end

def factorial_recursive(n)
  return 1 if n <= 1
  n * factorial_recursive(n - 1)
end
