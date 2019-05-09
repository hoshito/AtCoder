# 入力
n = gets.chomp.to_i
s = gets.chomp

b_count = 0
w_count = s.count(".")

min = b_count + w_count
n.times do |i|
  if s[i] == "#" then
    b_count += 1
  else
    w_count -= 1
  end
  sum = b_count + w_count
  min = sum if sum < min
end

# 出力
puts min

