def merge(left, right, left_length, right_length)
  i = 0
  j = 0
  k = 0
  ans = []
  
  while i < left_length && j < right_length
    if left[i] > right[j]
      ans[k] = right[j]
      j += 1
    else
      ans[k] = left[i]
      i += 1
    end
    k += 1
  end

  while i < left_length
    ans[k] = left[i]
    i += 1
    k += 1
  end

  while j < right_length
    ans[k] = right[j]
    j += 1
    k += 1
  end
  ans
end

def merge_sort(array)
  if array.length == 1
    return array
  end
  
  middle = array.length / 2

  # sort left half
  left = merge_sort(array[0..middle - 1])

  # sort right half
  right = merge_sort(array[middle..-1])
  # merge
  merge(left, right, left.length, right.length)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])