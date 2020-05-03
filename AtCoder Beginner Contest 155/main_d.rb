n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

n_arr = []
p_arr = []
a_arr.each do |a|
  if a < 0 then
    n_arr << a
  else
    p_arr << a
  end
end

if k <= n_arr.length * p_arr.length then
  n_arr.sort_by!{|a| a}
  p_arr.sort_by!{|a| -a}
  count = 1
  n_i = 0
  p_i = 0
  while count < k do
    if n_arr[n_i + 1].nil? && p_arr[p_i + 1].nil? then
      break
    elsif n_arr[n_i + 1].nil? then
      p_i += 1
    elsif p_arr[p_i + 1].nil? then
      n_i += 1
    elsif n_arr[n_i + 1] * p_arr[p_i] < n_arr[n_i] * p_arr[p_i + 1] then
      n_i += 1
    else
      p_i += 1
    end
    count += 1
  end
  puts n_arr[n_i] * p_arr[p_i]
else
  k -= n_arr.length * p_arr.length
  arr = (n_arr + p_arr).sort_by{|a| a.abs}
  puts arr.inspect
  count = 0
  i = 0
  j = 0
  while count < k do
    if i + 1 == j then
      break if arr[j+1].nil?
      j += 1
    elsif arr[j+1].nil? then
      i += 1
      j = i + 1
    elsif arr[i+1] * arr[j] < arr[i] * arr[j+1] then
      i += 1
    else
      j += 1
    end
    if (arr[i] >= 0 && arr[j] >= 0) || (arr[i] < 0 && arr[j] < 0) then
      count += 1
      puts "#{i}-#{j} #{arr[i] * arr[j]}"
    end
  end
  puts arr[i] * arr[j]
end
