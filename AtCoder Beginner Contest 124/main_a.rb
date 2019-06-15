a,b = gets.chomp.split(" ").map(&:to_i)

coin = 0
2.times do
  if a > b then
    coin += a
    a -= 1
  else
    coin += b
    b -= 1
  end
end
puts coin

