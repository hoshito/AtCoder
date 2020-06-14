function dfs(n, m)
  result = []
  arr = [0]
  while length(arr) > 0
    while length(arr) > 0 && arr[end] == n
      pop!(arr)
    end
    if length(arr) > 0
      arr[end] += 1
      end_num = arr[end]
      while length(arr) < m
        push!(arr, end_num)
      end
      push!(result, copy(arr))
    end
  end
  return result
end

(()->begin
  n,m,q = readline() |> split |> x->parse.(Int,x)
  arr = fill([], q)
  for i in 1:q
    arr[i] = readline() |> split |> x->parse.(Int,x)
  end
  ans = 0
  dfs_result = dfs(m, n)
  for comb in dfs_result
    tmp = 0
    for (a,b,c,d) in arr
      if comb[b] - comb[a] == c
        tmp += d
      end
    end
    ans = max(ans, tmp)
  end
  println(ans)
end)()
