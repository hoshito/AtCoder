n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

arr = []
a_arr.each_with_index do |a, i|
  arr << [a, i+1]
end

arr2 = []
arr.sort_by{|(k, v)| k}.each do |(k, v)|
  arr2 << v
end

puts arr2.join(" ")
