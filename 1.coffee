s = 0
for i in [1...1000]
  if i % 3 == 0 or i % 5 == 0
    s += i

console.log s