def merge_sort(array)
  middle = array.length / 2
  left = array[0..middle - 1]
  right = array[middle..-1]
  p "left #{left} right #{right}"
end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])