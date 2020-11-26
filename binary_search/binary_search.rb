def bsearch_index(arr, element)
  min = 0
  max = arr.length - 1
  while min <= max do 
    mid = (min + max)/2
    return mid if arr[mid] == element
    if arr[mid] < element
      min = mid + 1
    else
      max = mid - 1
    end
  end
  nil
end
