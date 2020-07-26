a,b,c = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i

# a < b < c を目指す
k.times do
  if a >= b
    b *= 2
  elsif b >= c
    c *= 2
  end
end

if a < b && b < c
  puts "Yes"
else
  puts "No"
end
