a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v <= w
  puts "NO"
  exit 0
end

k = (a - b).abs.to_f / (v - w)

if k <= t
  puts "YES"
else
  puts "NO"
end

