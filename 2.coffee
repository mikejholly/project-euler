
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