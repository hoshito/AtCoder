n = gets.chomp.to_i
s_arr = n.times.map{gets.chomp}

hash = {}
s_arr.each do |s|
  hash[s] ||= 0
  hash[s] += 1
end

puts "AC x #{hash['AC'].to_i}"
puts "WA x #{hash['WA'].to_i}"
puts "TLE x #{hash['TLE'].to_i}"
puts "RE x #{hash['RE'].to_i}"
