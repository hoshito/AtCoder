x,y = gets.chomp.split(" ").map(&:to_i)

a = x
count = 0
while a <= y do
  a *= 2
  count += 1
end

puts count
