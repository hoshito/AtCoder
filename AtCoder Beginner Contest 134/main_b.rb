n,d = gets.chomp.split(" ").map(&:to_i)

count = 0
while n > 0 do
  n -= (d * 2 + 1)
  count += 1
end

puts count

