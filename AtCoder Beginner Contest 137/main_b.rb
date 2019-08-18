k,x = gets.chomp.split(" ").map(&:to_i)

((x-k+1)..(x+k-1)).each do |t|
  next if t < -1000000 || t > 1000000
  puts t
end


