s = gets.chomp
t = gets.chomp

count = 0
0.upto(s.length-1) do |i|
  if s[i] != t[i]
    count += 1
  end
end
puts count