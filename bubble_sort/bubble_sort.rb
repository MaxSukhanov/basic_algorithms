def sort_bubble_way(arr)
  indexes = arr.length-1
  return arr if arr.length < 2

  loop do
    swap = false
    indexes.times do |index|
      if arr[index] > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
        swap = true
      end
    end
    
   break if !swap
  end
  arr
end

=begin
  for i in 0..indexes do
    for j in 0..indexes-i do
      if arr[j+1] == nil 
        break
      elsif arr[j] > arr[j+1]
       arr[j], arr[j+1] = arr[j+1], arr[j]
      else
        next
      end
    end
  end
 arr
end
=end

p sort_bubble_way([54, 2, 34, 0, 1, 17])
