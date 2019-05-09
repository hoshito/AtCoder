# 入力
n = gets.chomp.to_i
# 各要素は[t, x, y]. 原点開始なので初期値を入れておく
arr = [[0, 0, 0]]
n.times do |i|
  arr << gets.chomp.split(" ").map(&:to_i)
end

# t秒後に点(x1, y1)から点(x2, y2)へ移動可能かどうかを判定
def reachable?(t, x1, y1, x2, y2)
  # 最速で点(x1, y1)から点(x2, y2)を目指す
  min_t = (x2 - x1).abs + (y2 - y1).abs
  return false if min_t > t # 最速で目指しても到達不可能

  # 最速で点(x2, y2)に到達したあとは, 離れて, 戻ってを繰り返せば良い
  if (t - min_t) % 2 == 0 then
    return true # 離れて, 戻って,...,戻ってになるので到達可能
  else
    return false # 離れて, 戻って,...,離れてになるので到達不可能
  end
end

arr.each_cons(2) do |(t1, x1, y1), (t2, x2, y2)|
  # 途中で到達不可能になったらその場で終了
  unless reachable?((t2 - t1), x1, y1, x2, y2)
    puts "No"
    exit 0
  end
end

puts "Yes"
