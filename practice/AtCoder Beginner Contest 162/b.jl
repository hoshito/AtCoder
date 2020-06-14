(() -> begin
  n = readline() |> x->parse.(Int,x)
  ans = 0
  for i in 1:n
    if i % 3 != 0 && i % 5 != 0
      ans += i
    end
  end
  println(ans)
end)()
