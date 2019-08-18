a,b = gets.chomp.split(" ").map(&:to_i)

if (a - b) % 2 == 1 then
  puts "IMPOSSIBLE"
  exit 0
end

k1 = (a - b) / 2
k2 = (b - a) / 2
k3 = (a + b) / 2

[k1, k2, k3].each do |k|
  if (a - k).abs == (b - k).abs then
    puts k
    exit 0
  end
end
puts "IMPOSSIBLE"

