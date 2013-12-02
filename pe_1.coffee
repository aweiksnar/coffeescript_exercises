# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# without a class:

# mult = (num) -> num%3 is 0 or num%5 is 0
# sum = (range) -> [1...range].filter(mult).reduce (t, s) ->  t+s
# console.log sum 1000 #=> 233168

# with a class:

class Multiples
  constructor: (@num) ->
  mult: (num) -> num%3 is 0 or num%5 is 0
  sum: -> [1...@num].filter(@mult).reduce (t, s) ->  t+s

answer = new Multiples(1000).sum()
console.log answer #=> 233168

