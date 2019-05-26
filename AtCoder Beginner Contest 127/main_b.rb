r,d,x=gets.chomp.split(" ").map(&:to_i)

(1..10).each do |i|
  puts r * x - d
  x = r * x - d
end


