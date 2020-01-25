n,k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
lr_arr = s.chomp.split("").map{|c| c == "L" ? 1 : -1}

k.times do
  i1 = nil
  i2 = nil
  lr_arr.each_cons(2).with_index do |(lr1, lr2), i|
    if lr1 == 1 && lr2 == -1 then
      i1 = i+1
      break
    end
  end
  lr_arr.reverse.each_cons(2).with_index do |(lr1, lr2), i|
    if lr1 == 1 && lr2 == -1 then
      i2 = lr_arr.length - (i + 2)
      break
    end
  end
  if i1.nil? then
    i1 = 0
  end
  if i2.nil? then
    i2 = lr_arr.length - 1
  end
  tmp_arr = lr_arr[i1..i2]
  break if tmp_arr.nil?
  tmp_arr.each_with_index do |t, i|
    lr_arr[i2-i] = t * (-1)
  end
end

count = 0
lr_arr.each_with_index do |lr, i|
  if lr == 1 then
    count += 1 if i - 1 >= 0 && lr_arr[i-1] == 1
  else
    count += 1 if i + 1 < lr_arr.length && lr_arr[i+1] == -1
  end
end
puts count
