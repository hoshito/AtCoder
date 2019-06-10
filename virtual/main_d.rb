n=gets.chomp.to_i
s_arr = []
n.times do |i|
  s_arr << gets.chomp
end

m=gets.chomp.to_i
t_arr = []
m.times do |i|
  t_arr << gets.chomp
end

hash = {}
s_arr.each do |s|
  hash[s] ||= 0
  hash[s] += 1
end

t_arr.each do |t|
  hash[t] ||= 0
  hash[t] -= 1
end

max = hash.values.max
if max < 0 then
  puts 0
else
  puts max
end



