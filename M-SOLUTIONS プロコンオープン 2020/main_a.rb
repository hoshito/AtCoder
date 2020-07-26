l,r,d = gets.chomp.split(" ").map(&:to_i)

count = 0
(l..r).each do |i|
  count += 1 if i % d == 0
end

puts count