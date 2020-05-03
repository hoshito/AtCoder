n,a,b = gets.chomp.split(" ").map(&:to_i)


A = (10 ** 9 + 7)





a = [a, n - a].min
b = [b, n - b].min

tmp_a = 1
(1..a).each do |i|
  tmp_a *= (n - a + i) / i
  tmp_a = tmp_a % A
end

tmp_b = 1
(1..b).each do |i|
  tmp_b *= (n - b + i) / i
  tmp_b = tmp_b % A
end

puts sum  - (tmp_a + tmp_b)
