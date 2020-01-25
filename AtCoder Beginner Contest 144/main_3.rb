n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort.reverse + [0]
f_arr = gets.chomp.split(" ").map(&:to_i).sort.reverse

c = a_arr[0]
c2 = nil
index = 0
while k > 0 do
  a = a_arr[index]
  next_a = a_arr[index+1]
  if k >= index + 1 then
    k -= (index+1)
    c = next_a
  end
end

a_arr.each_cons(2) do |a, a2|


end

