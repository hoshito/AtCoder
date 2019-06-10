n,m = gets.chomp.split(" ").map(&:to_i)

ks = []
m.times do |i|
  ks << gets.chomp.split(" ").map(&:to_i)
end

p_arr = gets.chomp.split(" ").map(&:to_i)

c = 0
# 1 <= n <= 10
(2 ** n).times do |i|
  bi = (i.to_s(2)).reverse + "0" * 10
  arr = []
  n.times do |j|
    arr[j] = bi[j] == "1" ? true : false
  end

  flag = true
  ks.each_with_index do |kss, l|
    k = kss[0]
    s_arr = kss[1..-1]
    count = 0
    s_arr.each do |s|
      count += 1 if arr[s-1]
    end
    p = p_arr[l]
    if count % 2 != p then
      flag = false
      break
    end
  end
  c += 1 if flag
end

puts c

