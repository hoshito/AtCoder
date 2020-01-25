n = gets.chomp.to_i
b_arr = [10**5] + gets.chomp.split(" ").map(&:to_i) + [10**5]

a_arr = []
b_arr.each_cons(2).with_index do |(b1, b2), i|
  if b1 >= b2 then
    a_arr[i+1] = b2
  else
    a_arr[i+1] = b1
  end
end

sum = 0
a_arr.each do |a|
  sum += a.to_i
end
puts sum
