for num in [1..100]
  word = ("#{if num%3 is 0 then 'Fizz' else ""}#{if num%5 is 0 then 'Buzz' else ""}" || num)
  console.log(word)
