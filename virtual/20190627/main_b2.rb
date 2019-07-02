x = gets.chomp.to_i

max = 1
(2..Math.sqrt(x)).each do |i|
  tmp_i = i * i
  while tmp_i <= x do
    max = tmp_i if tmp_i > max
    tmp_i *= i
  end
end

puts max
