h,w,k = gets.chomp.split(" ").map(&:to_i)

arr = h.times.map{gets.chomp.split("").map{|s| s == "." ? 0 : 1}}

result = 0
(2 ** h).times do |i|
  arr_i = "%0#{h}d" % i.to_s(2)
  (2 ** w).times do |j|
    arr_j = "%0#{w}d" % j.to_s(2)
    count = 0
    0.upto(h-1) do |i2|
      next if arr_i[i2] == "0"
      0.upto(w-1) do |j2|
        next if arr_j[j2] == "0"
        count += 1 if arr[i2][j2] == 1
      end
    end
    result += 1 if count == k
  end
end

puts result