n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
a_arr << 0

kai_arr = []
uri_arr = []

tmp_i = 0
tmp = a_arr[tmp_i]
1.upto(n) do |i|
  if tmp < a_arr[i]
    kai_arr << tmp_i
    tmp_i = i
    tmp = a_arr[tmp_i]
  elsif tmp > a_arr[i]
    uri_arr << tmp_i
    tmp_i = i
    tmp = a_arr[tmp_i]
  end
end

stock = 0
yen = 1000
0.upto(n-1) do |i|
  kai = kai_arr[0]
  uri = uri_arr[0]
  if kai == i
    tmp_stock = yen / a_arr[i]
    yen -= tmp_stock * a_arr[i]
    stock += tmp_stock
    kai_arr.shift
  elsif uri == i
    tmp_yen = a_arr[i] * stock
    yen += tmp_yen
    stock = 0
    uri_arr.shift
  end
end

puts yen
