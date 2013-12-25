###
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
###

passes = (n) ->
  for i in [1..20]
    if n % i isnt 0 then return false
  true

i = 1
while true
  if passes(i)
    console.log i
    break
  i++
