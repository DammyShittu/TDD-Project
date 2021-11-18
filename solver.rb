class Solver

  def factorial(num)
    num_factorial = 1
  
    (1..num).each {|p| num_factorial *= p}
    num_factorial
    end
end

solver = Solver.new
puts solver.factorial(-5)