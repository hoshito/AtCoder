(() -> begin
  n,k = readline() |> split |> x->parse.(Int,x)
  ans = 0
  for i in k:n+1
    ans += Int((i * (n + (n-i+1)))/ 2 - (i * (0 + i-1)) /2 + 1)
    ans = mod(ans, 10^9 + 7)
  end
  println(ans)
end)()
