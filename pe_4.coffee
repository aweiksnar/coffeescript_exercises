# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# initialize with range and array
pal_array = []

reverseArray = (array) ->
  new_ary = []
  new_ary.push(item) for item in array
  new_ary.reverse()

for num in [100..999]
  for i in [100..999]
    mult = (num * i).toString().split("")
    pal_array.push(+mult.join("")) if mult.join("") == reverseArray(mult).join("")

console.log(Math.max pal_array...)
