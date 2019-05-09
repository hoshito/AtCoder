# 入力
n, y = gets.chomp.split(" ").map(&:to_i)

# n枚のカードを横並びにして, 間に2本のしきりを差し込むイメージで進める
#
# 組み合わせは (n+1) + (n+1)_C_2 通り
# 前半の(n+1)は2本のしきりが同じ位置にある組み合わせ,
# 後半の(n+1)_C_2は2本のしきりが異なる位置にある組み合わせ(CはCombinationの数学記号)
#
# 一番左のしきりよりも左にあるカードの枚数が, 1000円の枚数
# 一番左のしきりと一番右のしきりの間にあるカードの枚数が, 5000円の枚数
# 一番右のしきりよりも右にあるカードの枚数が, 10000円の枚数

# 前半部分の組み合わせ(5000円が常に0枚)
(n + 1).times do |i| # iはしきりの位置で左からスタート
  if 10000 * (n - i) + 1000 * i == y then
    puts "#{n - i} 0 #{i}"
    exit 0
  end
end

# 後半部分の組み合わせ
partition_index_1 = 0 # 一番左のしきり
partition_index_2 = 1 # 一番右のしきり
((n+1) * n / 2).times do |i|
  num_10000 = n - partition_index_2
  num_1000 = partition_index_1
  num_5000 = n - num_10000 - num_1000
  if 10000 * num_10000 + 5000 * num_5000 + 1000 * num_1000 == y then
    puts "#{num_10000} #{num_5000} #{num_1000}"
    exit
  end
  # しきりをひとつ右に進める
  partition_index_2 += 1
  # 限界を超えて進もうとしたら
  if partition_index_2 > n then
    partition_index_1 += 1
    partition_index_2 = partition_index_1 + 1
  end
end

# 組み合わせが存在しない場合
puts "-1 -1 -1"

