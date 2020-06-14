n = gets.chomp.to_i
if n == 1 then
  puts "a"
  exit
end

result = []
arr = %w(a b c d e f g h i j)
(n**(n-1)..n**(n-1)+(n**(n-1))-1).each do |i|
  puts "a" + i.to_s(n).split("")[1..-1].map{|x|arr[x.to_i]}.join("")
end
