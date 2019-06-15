n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i).sort.reverse

alice = 0
bob = 0
a_arr.each_with_index do |a, i|
  if i % 2 == 0 then
    alice += a
  else
    bob += a
  end
end

puts alice - bob

