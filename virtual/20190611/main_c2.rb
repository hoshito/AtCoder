n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

sum = 0
([0] + a_arr + [0]).each_cons(2) do |a1, a2|
  sum += (a1 - a2).abs
end

a_arr.each_with_index do |a, i|
  prev_a = i == 0 ? 0 : a_arr[i-1]
  next_a = i == a_arr.length - 1 ? 0 : a_arr[i+1]

  if (prev_a <= a && a <= next_a) || (next_a <= a && a <= prev_a) then
    puts sum
  else
    puts sum - (next_a - a).abs - (a - prev_a).abs + ((next_a - a).abs - (a - prev_a).abs).abs
  end
end
