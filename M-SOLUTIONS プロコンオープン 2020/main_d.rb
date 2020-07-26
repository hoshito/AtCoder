n = gets.chomp.to_i
x = gets.chomp

def popcount(a)
  m1 = 0x55555555
  m2 = 0x33333333
  m4 = 0x0f0f0f0f
  a -= (a >> 1) & m1
  a = (a & m2) + ((a >> 2) & m2)
  a = (a + (a >> 4)) & m4
  a += a >> 8
  return (a + (a >> 16)) & 0x3f
end

hash = {}
max = 2 * (10 ** 5)
(1..max).each do |i|
  pc = popcount(i)
  tmp = i % pc
  if tmp == 0
    count = 1
  else
    count = hash[tmp] + 1
  end
  hash[i] = count
end

tmp1 = 0
tmp2 = 0
pc = popcount(x.to_i(2))
(0..n-1).each do |i|
  if x[i] == "1"
    tmp1 += 2.pow(n-i-1, pc + 1)
    tmp1 %= (pc + 1)
    if pc > 1
      tmp2 += 2.pow(n-i-1, pc - 1)
      tmp2 %= (pc - 1)
    end
  end
end

(0..n-1).each do |i|
  if x[i] == "0"
    tmp = tmp1
    tmp += 2.pow(n-i-1, pc + 1)
    tmp %= (pc + 1)
  else
    if pc > 1
      tmp = tmp2
      tmp -= 2.pow(n-i-1, pc - 1)
      tmp %= (pc - 1)
    else
      puts 0
      next
    end
  end
  puts hash[tmp].to_i + 1
end
