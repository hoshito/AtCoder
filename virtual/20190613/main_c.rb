n = gets.chomp.to_i

a_b_arr = []
n.times do |i|
  a_b_arr << gets.chomp.split(" ").map(&:to_i)
end
a_b_arr.sort_by!{|(a, b)| [-a, -b]}

c_d_arr = []
n.times do |i|
  c_d_arr << gets.chomp.split(" ").map(&:to_i)
end
c_d_arr.sort_by!{|(c, d)| [-c, -d]}

count = 0
a_b_arr.each_with_index do |(a, b), i|
  index = -1
  min_dist = 200
  c_d_arr.each_with_index do |(c, d), j|
    if a < c && b < d then
      dist = c - a + d - b
      if min_dist > dist then
        min_dist = dist
        index = j
      end
    end
  end
  if index >= 0 then
    c_d_arr.delete_at(index)
    count += 1
  end
end

puts count
