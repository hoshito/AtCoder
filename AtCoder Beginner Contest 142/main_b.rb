n,k = gets.chomp.split(" ").map(&:to_i)
h_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
h_arr.each do |h|
  count += 1 if h >= k
end
puts count

