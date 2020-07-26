a,b,k = gets.chomp.split(" ").map(&:to_i)

if a > k
  puts "#{a - k} #{b}"
else
  puts "0 #{[b - (k - a), 0].max}"
end
