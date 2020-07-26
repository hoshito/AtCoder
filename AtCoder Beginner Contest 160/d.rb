n,x,y = gets.chomp.split(" ").map(&:to_i)

hash = {}
(1).upto(n-1) do |i|
  (i+1).upto(n) do |j|
    diff = [j - i, (x - i).abs + 1 + (y - j).abs, (y - i).abs + 1 + (x - j).abs].min
    hash[diff] ||= 0
    hash[diff] += 1
  end
end

1.upto(n-1) do |i|
  puts hash[i].to_i
end