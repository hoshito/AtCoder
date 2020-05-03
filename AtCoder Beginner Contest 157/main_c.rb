n,m = gets.chomp.split(" ").map(&:to_i)
sc_arr = m.times.map{gets.chomp.split(" ").map(&:to_i)}

arr = []
n.times do
  arr << -1
end

if m == 0 then
  if n == 1 then
    puts 0
  elsif n == 2 then
    puts 10
  else
    puts 100
  end
  exit
end

hash = {}
sc_arr.each do |s, c|
  if !hash[s].nil? && hash[s] != c then
    puts "-1"
    exit
  end
  hash[s] = c
end

arr.each_with_index do |a, i|
  if hash[i+1] then
    arr[i] = hash[i+1]
  end
end

if arr[0] == 0 then
  if n == 1 then
    puts 0
  else
    puts "-1"
  end
  exit
end

arr.each_with_index do |a, i|
  if a == -1 then
    if i == 0 then
      arr[i] = 1
    else
      arr[i] = 0
    end
  end
end
result = arr.join("").to_i
if result.to_s.length == n then
  puts result
else
  puts "-1"
end
