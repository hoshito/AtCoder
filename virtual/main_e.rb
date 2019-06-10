n=gets.chomp.to_i
a1_arr=gets.chomp.split(" ").map(&:to_i)
a2_arr=gets.chomp.split(" ").map(&:to_i)

max = 0
n.times do |i|
  count = (a1_arr[0..i] + a2_arr[i..-1]).inject(&:+)
  max = count if count > max
end

puts max




