n = gets.chomp.to_i
d_hash = {}
n.times do |i|
  d = gets.chomp.to_i
  d_hash[d] = 1
end

puts d_hash.keys.size
