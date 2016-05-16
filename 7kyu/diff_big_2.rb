def diff_big_2(arr)
  biggest = arr.max
  arr.delete_at(arr.index(biggest))
  biggest - arr.max
end