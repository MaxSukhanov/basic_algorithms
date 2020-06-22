require_relative 'fibo_count_ways'

class FibonacciNumberApp

  def self.run
    new.run
  end

  def run
    puts "Enter an index to get a member of the Fibonacci sequence"
    print "Your number: "
    index = gets.chomp.to_i
    puts "The member of the Fibonacci sequence with index #{index}: #{FibonacciNumberCounter.new.i_fibo(index)} "
  end
end

