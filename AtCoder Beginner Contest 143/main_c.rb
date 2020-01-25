n = gets.chomp.to_i
s = gets.chomp

prev = ""
count = 0
(0..(n-1)).each do |i|
  next if s[i] == prev
  count += 1
  prev = s[i]
end

puts count
