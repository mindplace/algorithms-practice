def iterative_nth_fibonacci_number(n)
  fib_array = [0, 1]
  while !fib_array[n]
    fib_array << fib_array[-1] + fib_array[-2]
  end
  fib_array[n]
end

def recursive_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n == 1
  return recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end
