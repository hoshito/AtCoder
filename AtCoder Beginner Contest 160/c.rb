k,n = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
a_arr << k + a_arr[0]

max = 0
a_arr.each_cons(2) do |a1, a2|
  diff = a2 - a1
  max = diff if diff > max
end

puts k - max