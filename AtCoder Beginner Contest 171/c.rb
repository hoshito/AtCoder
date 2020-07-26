n = gets.chomp.to_i

arr = ("a".."z").to_a
if n <= 26
  puts arr[n-1]
  exit
end

m = n
a = 26
dig = 1
while m > 0
  m -= a
  break if m <= 0
  a *= 26
  dig += 1
end

s = []
m = m + a - 1
dig.times do
  q = m % 26
  m /= 26
  s.unshift(arr[q])
end
puts s.join
