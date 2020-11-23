class Array
  def bsearch_index(element)
    min = 0
    max = self.length - 1
    while min <= max do 
      mid = (min + max)/2
      return mid if self[mid] == element
      if self[mid] < element
        min = mid + 1
      else
        max = mid - 1
      end
    end
  end
end
