def merge_sort(array)
  
  middle = array.length / 2

  # sort left half
  left = array[0..middle - 1]

  # sort right half
  right = array[middle..-1]

  # merge

end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])