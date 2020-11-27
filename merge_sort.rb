def merge_sort(arr)
  return arr if arr.length < 2
  mid        = arr.length / 2
  left_half  = merge_sort(arr[0...mid])
  right_half = merge_sort(arr[mid...arr.length])
  
  merge(left_half, right_half)
end

def merge(left, right)
  sorted_arr = []
  while !left.empty? && !right.empty?
    if left[0] > right[0]
      sorted_arr << right.shift
    else
      sorted_arr << left.shift
    end
  end
  sorted_arr.concat(left).concat(right)
end

