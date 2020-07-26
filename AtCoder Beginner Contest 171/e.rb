n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

s = 0
a_arr.each do |a|
  s = s ^ a
end

arr = []
a_arr.each do |a|
  arr << (s ^ a)
end

puts arr.join(" ")