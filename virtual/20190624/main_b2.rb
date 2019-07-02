n = gets.chomp.to_i

sqrt = Math.sqrt(10 ** 9) + 1
(1..sqrt).each do |i|
  if n < i * i then
    puts (i - 1) ** 2
    exit
  end
end
