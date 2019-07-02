n = gets.chomp.to_i
arr = n.times.map{gets.chomp.split(" ")}

sum = 0
arr.each do |(x, u)|
  if u == "JPY" then
    sum += x.to_i
  else
    sum += 380000.0 * x.to_f
  end
end

puts sum
