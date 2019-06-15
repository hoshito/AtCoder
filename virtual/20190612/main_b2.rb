n,x = gets.chomp.split(" ").map(&:to_i)

m_arr = []
sum = 0
min = 1000
n.times do |i|
  m = gets.chomp.to_i
  sum += m
  min = m if m < min
end

count = (x - sum) / min

puts n + count

