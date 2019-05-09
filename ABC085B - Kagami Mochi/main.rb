# 入力
n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

kagami_mochi = []
while arr.length > 0 do
  max = arr.max
  kagami_mochi << max
  # rubyのdeleteは該当したもの全てを削除するので, maxにあたる要素をまとめて削除できる
  arr.delete(max)
end

# 出力
puts kagami_mochi.length
