require "set"
n,m = gets.chomp.split(" ").map(&:to_i)

route = {}
room = Set.new
m.times do
  a,b = gets.chomp.split(" ").map(&:to_i)
  route[a] ||= Set.new
  route[a] << b
  route[b] ||= Set.new
  route[b] << a
  room << a
  room << b
end

result = {}
result[1] = 0

next_set = Set.new
next_set << 1
while next_set.length > 0
  set = next_set
  next_set = Set.new
  set.each do |r|
    route[r].each do |next_r|
      next if result[next_r]
      result[next_r] = r
      next_set << next_r
    end
  end
end

if result.length == room.length
  puts "Yes"
  (2..n).each do |i|
    puts result[i]
  end
else
  puts "No"
end

