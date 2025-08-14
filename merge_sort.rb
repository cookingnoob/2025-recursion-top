def merge_sort(array)
  p "incoming array: #{array}"
  if array.length == 1
    return array
  end
  
  middle = array.length / 2

  # sort left half
  left = merge_sort(array[0..middle - 1])

  # sort right half
  right = merge_sort(array[middle..-1])
  # merge

end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])