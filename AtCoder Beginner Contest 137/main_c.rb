n = gets.chomp.to_i
s_arr = n.times.map{gets.chomp.split("").sort.join("")}

hash = {}
s_arr.each do |s|
  hash[s] ||= 0
  hash[s] += 1
end

count = 0
hash.each do |s, c|
  next if c <= 1
  count += ((c * (c-1)) / 2)
end

puts count
