class Array

  def sort_bubble_way
    indexes = self.length-1
    for i in 0..indexes do
      for j in 0..indexes-i do
        if self[j+1] == nil 
          break
        elsif self[j] > self[j+1]
          self[j], self[j+1] = self[j+1], self[j]
        else
          next
        end
      end
    end
    self
  end
end

