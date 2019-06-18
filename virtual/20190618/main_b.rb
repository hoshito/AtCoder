n,a,b = gets.chomp.split(" ").map(&:to_i)

sum = 0
(1..n).each do |i|
  m = (i / 10000) % 10 + (i / 1000) % 10 + (i / 100) % 10 + (i / 10) % 10 + i % 10
  if m >= a && m <= b then
    sum += i
  end
end

puts sum
