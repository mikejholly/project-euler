###
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
###

palindromic = (n) ->
  i = 0
  a = []

  while n > 0
    m = (n % 10)
    n = (n - m) / 10
    a[i++] = m

  for i in [0..Math.floor(a.length / 2) - 1]
    if a[i] != a[a.length - 1 - i]
      return false

  true

max = 0
for i in [100..999]
  for j in [100..999]
    n = i * j
    if palindromic(n) and n > max
      max = n

console.log max
