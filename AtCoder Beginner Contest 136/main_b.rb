n = gets.chomp.to_i
count = 0
(1..n).each do |t|
  count += 1 if t.to_s.length % 2 == 1
end
puts count
