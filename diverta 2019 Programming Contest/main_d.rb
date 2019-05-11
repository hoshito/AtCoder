n = gets.chomp.to_i

result = 0

(1..Math.sqrt(n)).each do |r|
  next if n % r != 0

  m = n / r - 1
  result += m if r < m

  r2 = n / r
  m2 = n / r2 - 1
 result += m2 if r2 < m2
end

puts result


