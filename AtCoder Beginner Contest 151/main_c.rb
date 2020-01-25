require "set"
n,m = gets.chomp.split(" ").map(&:to_i)
ps_arr = m.times.map{
  arr = gets.chomp.split(" ")
  [arr[0].to_i, arr[1]]
}

hash = {}
set = Set.new
ac_count = 0
wa_count = 0
ps_arr.each do |(p, s)|
  if set.include?(p) then
    next
  elsif s == "AC" then
    wa_count += hash[p].to_i
    ac_count += 1
    set << p
  else
    hash[p] ||= 0
    hash[p] += 1
  end
end

puts "#{ac_count} #{wa_count}"
