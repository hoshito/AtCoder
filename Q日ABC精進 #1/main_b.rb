n = gets.chomp.to_i
count = 0
(1..n).each do |i|
  count += 1 if i.to_s.length % 2 == 1
end
puts count
