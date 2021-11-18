class Solver

  def factorial(num)
    num_factorial = 1
    if(num < 0) 
      "Factorial of negative number can't be calculated"
    else
      (1..num).each {|p| num_factorial *= p}
      num_factorial
    end 
  end

  def reverse
  end
end

solver = Solver.new
puts solver.factorial(-5)