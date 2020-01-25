a,b = gets.chomp.split(" ").map(&:to_i)
a_str = a.to_s * b
b_str = b.to_s * a

if a_str < b_str then
  puts a_str
else
  puts b_str
end
