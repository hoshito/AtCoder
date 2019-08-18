n = gets.chomp.to_i
a_arr = n.times.map{gets.to_i}

index_arr = []
hash = {}

a_arr.each_with_index do |a, i|
  hash[a] = i
end

count = 0
prev_index = 10 ** 9 + 1
hash.to_a.sort_by{|(a,b)| [a, -b]}.each do |(num, index)|
  puts "====== #{index} : #{prev_index}"
  if index < prev_index then
    count += 1
    puts "==== #{count}"
  end
  prev_index = index
end

puts count
