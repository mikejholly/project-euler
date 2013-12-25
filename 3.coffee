###
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
###


# Primality test
prime = (n) ->
  return true if n is 2 or n is 3
  return false if n % 2 is 0
  return false if n % 3 is 0

  for i in [2..Math.floor Math.sqrt n]
    if n % i is 0
      return false

  return true

max  = 600851475143
test = 3
best = 0

# Count up to max by 2 and check for prime divisors.
# Reset max to max / test.
while max >= test
  if prime(test) and (max % test is 0)
    best = test
    max  = max / test
  else
    test = test + 2

console.log best
