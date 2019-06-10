n = gets.chomp.to_i
d,x = gets.chomp.split(" ").map(&:to_i)

a_arr = []
n.times do |i|
  a_arr << gets.chomp.to_i
end

count = 0
a_arr.each do |a|
  t = 0
  while t * a + 1 <= d do
    count += 1
    t += 1
  end
end

puts count + x
