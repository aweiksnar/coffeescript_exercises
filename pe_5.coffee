# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class SmallestDivisible
  constructor: (@range) ->
    @num = 1

  numIsDivisibleBy: ->
    for n in @range
      return false if @num % n isnt 0
    true

  getNum: ->
    while true
      if @numIsDivisibleBy(@num, @range)
        return @num ; break
      else
        @num++

answer = new SmallestDivisible([1..20]).getNum()
console.log answer

# without class:

###
numIsDivisibleBy = (num, range) ->
  for n in range
    return false if num % n isnt 0
  true

getNum = ->
  num = 1
  while true
    if numIsDivisibleBy(num, [1..20])
      return num ; break
    else
      num++

console.log(getNum()) #=> 232792560
###
