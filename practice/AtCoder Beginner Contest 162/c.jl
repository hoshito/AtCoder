(() -> begin
  k = readline() |> x->parse.(Int,x)
  ans = 0
  for a in 1:k
    for b in 1:k
      tmp = gcd(a, b)
      for c in 1:k
        ans += gcd(tmp, c)
      end
    end
  end
  println(ans)
end)()
