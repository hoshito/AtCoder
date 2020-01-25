n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

result = 0
a_arr.each do |a|
  result += (1 / a.to_f)
end

puts 1 / result.to_f
