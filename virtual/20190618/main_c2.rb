n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end

result = 0
hash.each do |(x, count)|
  if x > count then
    result += count
  elsif x < count
    result += count - x
  end
end

puts result
