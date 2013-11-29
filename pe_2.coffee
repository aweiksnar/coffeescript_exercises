fib = (num) ->
  switch num
    when 0 then 0
    when 1 then 1
    else (fib num-1) + (fib num-2)

even = (num) -> num%2 == 0

fibSum = (range) ->
  num = 0
  fibSeq = []
  while fib(num) < range
    fibNum = fib(num)
    fibSeq.push fibNum if even fibNum
    num += 1
  fibSeq.reduce (t,s) -> t+s

console.log fibSum 4000000
