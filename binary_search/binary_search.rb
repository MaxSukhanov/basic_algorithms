require 'benchmark'
class Array
  def index_of_element(number)
    min = 0
    max = self.length - 1
    mid = 0
    
    loop do   
      mid = (min + max)/2
      if self[mid] == number 
        break
      elsif self[mid] < number
        min = mid + 1
        next
      else self[mid] > number
        max = max - 1
        next
      end
    end
    mid
  end
end
