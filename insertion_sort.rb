def insertion_sort(arr)
  arr.length.times do |item|
    while item > 0
      if arr[item] < arr[item-1]
        arr[item], arr[item-1] = arr[item-1], arr[item]
        item -= 1
      else
        break
      end
    end
  end
  arr
end
