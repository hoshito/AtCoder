n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i).sort_by{|a| -a}

q = a_arr.shift
count = 1
queue = []
result = 0
a_arr.each_with_index do |a, i|
  queue << a
  count += 1
  result += q
  if count == 2
    count = 0
    q = queue.shift
  end
end

puts result

