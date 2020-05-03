n,k = gets.chomp.split(" ").map(&:to_i)

count = 0
while n > 0 do
  n /= k
  count += 1
end
puts count
