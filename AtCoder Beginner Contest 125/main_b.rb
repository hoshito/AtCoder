n = gets.chomp.to_i
v_arr = gets.chomp.split(" ").map(&:to_i)
c_arr = gets.chomp.split(" ").map(&:to_i)

result = 0
v_arr.zip(c_arr).each do |v, c|
  result += (v - c) if v > c
end

puts result

