require "set"
n = gets.chomp.to_i
arr = n.times.map{gets.to_i}

set = Set.new
(1..n).each do |i|
  set << i
end

x = -1
arr.each do |a|
  if set.include?(a) then
    set.delete(a)
  else
    x = a
  end
end

if x == -1 then
  puts "Correct"
else
  puts "#{x} #{set.to_a[0]}"
end
