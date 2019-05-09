# 入力
n, a, b = gets.chomp.split(" ").map(&:to_i)

sum = 0
(1..n).each do |i|
  tmp_sum = i.to_s.split("").map(&:to_i).reduce(&:+)
  if a <= tmp_sum && tmp_sum <= b then
    sum += i
  end
end

# 出力
puts sum
