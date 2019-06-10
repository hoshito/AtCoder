n=gets.chomp.to_i
arr = []
n.times do |i|
  s,p=gets.chomp.split(" ")
  arr << [s, p.to_i, i+1]
end

arr.sort_by!{|(s,p,i)| [s, -p]}

arr.each do |(s,p,i)|
  puts i
end


