n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i)

max = 0
count = 0
h_arr.each do |h|
  if h >= max then
    max = h
    count += 1
  end
end

puts count
