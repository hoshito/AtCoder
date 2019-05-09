# 入力
n = gets.chomp.to_i # 使わない
arr = gets.chomp.split(" ").map(&:to_i)

# それぞれのプレイヤーが選択したものをこの配列に格納
allice_select = []
bob_select = []

allice_turn = true
while arr.length > 0 do
  # 最大値とそのインデックス
  max = arr.max
  max_i = arr.index(max)
  # 選択
  if allice_turn then
    allice_select << max
  else
    bob_select << max
  end
  # 選択した要素の削除
  arr.delete_at(max_i)
  # 選択者の交代
  allice_turn = !allice_turn
end

# 出力
puts allice_select.reduce(&:+) - bob_select.reduce(&:+)
