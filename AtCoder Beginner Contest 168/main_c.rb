a,b,h,m = gets.chomp.split(" ").map(&:to_i)

s = (h * 60 + m) * 360 / (12 * 60).to_f
t = m * 360 / 60.to_f

if s == t
  puts (b - a).abs
elsif s > t
  puts Math.sqrt(a ** 2 + b ** 2 - 2 * a * b * Math.cos((s - t) * Math::PI / 180.to_f))
else
  puts Math.sqrt(a ** 2 + b ** 2 - 2 * a * b * Math.cos((t - s) * Math::PI / 180.to_f))
end


