n = gets.chomp.to_i
a_arr = n.times.map{gets.to_i}

a_arr.each_cons(2) do |a1, a2|
  if a1 == a2 then
    puts "stay"
  elsif a1 < a2 then
    puts "up #{a2 - a1}"
  else
    puts "down #{a1 - a2}"
  end
end
