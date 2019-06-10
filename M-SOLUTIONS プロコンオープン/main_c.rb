q=gets.chomp.to_i

arr = []
q.times do |i|
  arr << gets.chomp.split(" ").map(&:to_i)
end

arr.each do |(x, d, n)|
  a = 1
  n.times do |i|
    a *= (x + i * d) % 1000003
  end
  puts a % 1000003
end


