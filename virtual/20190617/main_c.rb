a,b,c,x,y = gets.chomp.split(" ").map(&:to_i)

min_sum = Float::INFINITY
max = x > y ? x : y
(0..max).each do |i|
  sum = c * i * 2
  if x - i > 0 then
    sum += a * (x - i)
  end
  if y - i > 0
    sum += b * (y - i)
  end
  min_sum = sum if sum < min_sum
end

puts min_sum

