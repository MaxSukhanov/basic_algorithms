require 'benchmark'
require 'matrix'

class FibonacciNumberCounter
  
  #i - iterative_way
  def i_fibo(index)
    fibo = 0 #fibo here is a desirable N number 
    a = 0 #A here is fibo[n-1]
    b = 1 #B here is fibo[n-2]

    index.times do 
      fibo = a + b 
      b = a
      a = fibo
    end

    fibo
  end

  #r - recursive_way
  def r_fibo(index)
    return index if (0..1).include? index
    r_fibo(index-1) + r_fibo(index-2) if index > 1

    #Refactored
    #  index < 2 ? index : r_fibo(index-1) + r_fibo(index-2)

    #Example with index third member of sequence:

    #r_fibo(3) = r_fibo(2) + r_fibo(1)
    #             = r_fibo(1) + r_fibo(0) + 1
    #             = 1 + 0 + 1
  end 
end


#Benchmarking

=begin 

counter = FibonacciNumberCounter.new

puts Benchmark.measure {
  print "Iterative way: "
  counter.i_fibo(35)
  # the best score, linear - in terms of Big O --> O(n).
}


puts Benchmark.measure {
  print "Recursive way: "
  counter.r_fibo(35)

  # extremely inefficient - in terms of Big O --> O(2**n).
}

=end
