a,b,c = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i

k.times do
  if b <= a
    b *= 2
  elsif c <= b
    c *= 2
  end
end

if b > a && c > b
  puts "Yes"
else
  puts "No"
end

