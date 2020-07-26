n,k = gets.chomp.split(" ").map(&:to_i)
r,s,p = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp

hash_item = {}
["r", "p", "s", "r"].each_cons(2){|a, b| hash_item[a] = b}
hash_point = {"r"=> r, "s"=> s, "p"=> p}

arr = []
result = 0
0.upto(t.length-1) do |i|
  c = t[i]
  tmp_item = hash_item[c]
  tmp_point = hash_point[tmp_item]

  prev_item = i < k ? nil : arr[i - k]
  if tmp_item != prev_item
    result += tmp_point
    arr << tmp_item
    next
  end

  next_c = t[i + k]
  next_item = hash_item[next_c]
  arr << (["r", "s", "p"] - [prev_item, next_item])[0]
end
puts result
