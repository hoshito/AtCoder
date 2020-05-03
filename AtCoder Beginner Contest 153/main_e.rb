h,n = gets.chomp.split(" ").map(&:to_i)
ab_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

max = 0
max_a = 0
max_b = 0
ab_arr.each do |(a, b)|
  c = a / b.to_f
  puts "=----=#{c}"
  if c > max then
    max = c
    max_a = a
    max_b = b
  end
end

puts "=== #{max_a} #{max_b}"
count = h / max_a
puts "-----#{count}"
h -= max_a * count
result = max_b * count

if h == 0 then
  puts result
  exit 0
end

puts result
puts h


=begin

min_b = max_b
ab_arr.each_with_index do |(a, b), i|
  if a >= h && b <= min_b then
    min_b = b
  end
end
puts h
puts min_b
puts result + min_b
=end
