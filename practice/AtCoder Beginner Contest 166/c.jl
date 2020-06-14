function main()
  n,m = parse.(Int,split(readline()))
  h_arr = parse.(Int,split(readline()))
  h_ones = ones(n)

  for i in 1:m
    a,b = parse.(Int, split(readline()))
    if h_arr[a] > h_arr[b]
      h_ones[b] = 0
    elseif h_arr[a] < h_arr[b]
      h_ones[a] = 0
    else
      h_ones[a] = 0
      h_ones[b] = 0
    end
  end

  println(count(x -> x == 1, h_ones))
end
main()
