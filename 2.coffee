###
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
###
n = 1
l = 1
t = 0
while 1
  f = n + l
  n = l
  l = f
  if f % 2 == 0
    t += f
  if f > 4000000
    break

console.log t
