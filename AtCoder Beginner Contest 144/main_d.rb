a,b,x = gets.chomp.split(" ").map(&:to_i)

if x * 2 >= a * a * b then
  y = x / (a*a).to_f
  puts Math.atan(2*(b-y)/a.to_f) * 180 / Math::PI.to_f
else
  y = 2 * x / (a * b).to_f
  puts Math.atan(b/y.to_f) * 180 / Math::PI.to_f
end



