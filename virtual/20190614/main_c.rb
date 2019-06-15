n = gets.chomp.to_i
m_arr = []
a_arr = []
r_arr = []
c_arr = []
h_arr = []
n.times do
  s = gets.chomp
  case s[0]
  when "M" then
    m_arr << s
  when "A" then
    a_arr << s
  when "R" then
    r_arr << s
  when "C" then
    c_arr << s
  when "H" then
    h_arr << s
  end
end

arr = []
if m_arr.length > 0 then
  arr << m_arr.length
end
if a_arr.length > 0 then
  arr << a_arr.length
end
if r_arr.length > 0 then
  arr << r_arr.length
end
if c_arr.length > 0 then
  arr << c_arr.length
end
if h_arr.length > 0 then
  arr << h_arr.length
end

count = 0
arr.combination(3) do |n1, n2, n3|
  count += (n1 * n2 * n3)
end

puts count

