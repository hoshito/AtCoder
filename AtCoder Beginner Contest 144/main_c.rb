n = gets.chomp.to_i

sqrt =  Math.sqrt(n).to_i
q = 1
(2..sqrt).each do |i|
  p = n / i
  if p * i == n then
    q = i
  end
end

r = n / q

puts (q-1) + (r-1)
