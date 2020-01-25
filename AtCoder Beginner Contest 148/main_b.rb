n = gets.chomp.to_i
s,t = gets.chomp.split(" ")

str = ""
n.times do |i|
  str += s[i] + t[i]
end
puts str
