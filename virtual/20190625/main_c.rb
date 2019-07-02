require "set"
s = gets.chomp
k = gets.chomp.to_i

substr_set = Set.new

(0..(s.length-1)).each do |i|
  k.times do |j|
    substr_set << s[i..(i+j)]
  end
end

puts substr_set.to_a.sort[k-1]
