# 入力
n = gets # 使わない
arr = gets.split(" ").map(&:to_i)

# 2で割る操作を繰り返す
step = 0
while arr.all?{ |i| i % 2 == 0 } do
  arr.map! { |i| i / 2 }
  step += 1
end

# 出力
puts step
