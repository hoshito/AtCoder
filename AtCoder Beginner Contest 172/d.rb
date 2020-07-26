n = gets.chomp.to_i

result = 0
1.upto(n) do |i|
  m = n / i
  result += m * (2 * i + (m - 1) * i) / 2
end

puts result