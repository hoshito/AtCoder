n,m,x = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do |i|
  arr[i] = []
  gets.chomp.split(" ").each_with_index do |a, j|
    arr[i][j] = a.to_i
  end
end

min = 9999999999999

(2 ** n).times do |t|
  tmp = []
  m.times do |i|
    tmp[i] = 0
  end
  coin = 0
  ("%0#{n}d" % t.to_s(2)).split("").each_with_index do |flag, i|
    next if flag == "0"
    coin += arr[i][0]
    arr[i][1..-1].each_with_index do |a, j|
      tmp[j] += a
    end
  end
  if tmp.all?{|a| a >= x}
    min = coin if coin < min
  end
end
if min == 9999999999999
  puts "-1"
else
  puts min
end
