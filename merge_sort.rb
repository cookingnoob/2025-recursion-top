def merge(left, right, left_length, right_length)
  i = 0
  j = 0
  k = 0
  ans = []
  
  while i < left_length && j < right_length
  end
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

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])