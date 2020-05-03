n,k = gets.chomp.split(" ").map(&:to_i)
p_arr = gets.chomp.split(" ").map(&:to_i)

expect = [0]
tmp_sum = 0
(1..200000).each do |i|
  tmp_sum += i
  expect << (tmp_sum) / i.to_f
end

tmp_arr = p_arr[0..(k-1)]
sum = 0
tmp_arr.each do |a|
  sum += expect[a]
end
max = sum
(k..p_arr.length-1).each do |i|
  p = tmp_arr.shift
  tmp_arr.push(p_arr[i])
  sum = sum - expect[p] + expect[p_arr[i]]
  max = sum if max < sum
end

puts max
