require_relative 'factorial_calculator'
class FactorialApp

  def self.run
    new.run
  end

  def run
    puts "Enter a number to calculate factorial"
    print "Your number: "
    number = gets.chomp.to_i

    puts "Factorial of #{number}: #{FactorialCalculator.new.r_factorial(number)}"
  end
end
