r,g,b,n=gets.chomp.split(" ").map(&:to_i)

count = 0

(0..3000).each do |r_i|
  (0..3000).each do |g_i|
    tmp = n - r * r_i - g * g_i
    if tmp >= 0 && tmp % b == 0 then
      count += 1
    end
  end
end

puts count

