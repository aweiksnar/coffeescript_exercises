# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class SumSquareDifference
  constructor: (@range) ->

  sumOfSquares: -> @range.reduce (t, s) -> t + (s*s)

  squareOfSums: -> Math.pow((@range.reduce (t, s) -> t + s), 2)

  difference: -> @squareOfSums() - @sumOfSquares()

answer = new SumSquareDifference([1..100])
console.log(answer.difference()) #=> 2640

