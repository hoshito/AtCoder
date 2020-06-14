function main()
  n,k = parse.(Int,split(readline()))

  n_arr = zeros(n)

  for i in 1:k
    d = readline()
    for n_i in parse.(Int,split(readline()))
      n_arr[n_i] += 1
    end
  end
  println(count(iszero, n_arr))
end
main()
