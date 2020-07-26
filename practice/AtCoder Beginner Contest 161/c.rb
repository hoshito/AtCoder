n,k = gets.chomp.split(" ").map(&:to_i)

min = n % k
while true do
  tmp = (min - k).abs
  if tmp >= min
    break
  else
    min = tmp
  end
end
puts min