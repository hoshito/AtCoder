(() -> begin
  n = readline() |> x->parse.(Int,x)
  s = readline()
  ans = count("R", s) * count("G", s) * count("B", s)
  for i in 1:n-2
    for j in i+1:n-1
      k = 2 * j - i
      if k <= n && s[i] != s[j] && s[j] != s[k] && s[k] != s[i]
        ans -= 1
      end
    end
  end
  println(ans)
end)()
