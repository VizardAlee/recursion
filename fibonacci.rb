def fib(count)
  n1 = 0
  n2 = 1
  sequence = [n1, n2]

  while count > 2
    n3 = n1 + n2
    sequence << n3
    n1 = n2
    n2 = n3
    count -= 1
  end
  return sequence
end

def fib_rec(num)
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num == 2

  sequence = fib_rec(num - 1)
  sequence << sequence[-2] + sequence[-1]
end

p fib_rec(8)
