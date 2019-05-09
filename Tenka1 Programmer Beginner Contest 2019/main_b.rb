n = gets.chomp.to_i
s = gets.chomp
k = gets.chomp.to_i

c = s[k-1]
puts s.gsub(/[^#{c}]/, "*")