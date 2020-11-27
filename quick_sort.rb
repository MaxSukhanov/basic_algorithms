def quick_sort(arr)
  return arr if arr.length < 2
  pivot = arr[arr.length / 2]
  less = arr.select { |el| el < pivot}
  more = arr.select { |el| el > pivot}
  quick_sort(less) + [pivot] + quick_sort(more)
end

