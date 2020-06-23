require 'benchmark'
class FactorialCalculator
  attr_reader :number

  #r - recursive
  def r_factorial(number)
    return number if number <= 1
    number * r_factorial(number-1)

    #Refactored
    # number <= 1 ? number : number * factorial(number-1)
  end 
  
  #i - iterative
  def i_factorial(number)
    factorial = 1
    i = 2

    (number-1).times do
      factorial *= i
      i += 1
    end
    factorial
  end
end


#Benchmarking

=begin


fact = FactorialCalculator.new
puts Benchmark.measure {
  fact.r_factorial(10000)
}
puts Benchmark.measure {
  fact.i_factorial(10000)
}

=end

