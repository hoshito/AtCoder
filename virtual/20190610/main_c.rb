n = gets.chomp.to_i
txy_arr = []
n.times do |i|
  txy_arr << gets.chomp.split(" ").map(&:to_i)
end

pos_x = 0
pos_y = 0
now_t = 0
txy_arr.each do |(t, x, y)|
  dist = (x - pos_x).abs + (y - pos_y).abs
  time = t - now_t
  if time < dist || (time - dist) % 2 == 1 then
    puts 'No'
    exit
  end
  pos_x = x
  pos_y = y
  now_t = t
end

puts 'Yes'
