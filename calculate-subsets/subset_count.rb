def subset_count(n, k)
  if n == 0 || k == 1
    return n
  elsif k == 0
    return 1
  end

  subset_count(n - 1, k - 1) + subset_count(n - 1, k)
end
