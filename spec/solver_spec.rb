require_relative '../solver'

describe Solver do

  it "checks if this is an instance of the Solver class" do
    solve = Solver.new
    expect(solve).to be_instance_of Solver
  end

  it "checks if the factorial method exists" do
    solve = Solver.new
    expect(solve).to respond_to :factorial
  end

  it "checks if factorial method behaves correctly" do
  solve = Solver.new
  five_factorial = solve.factorial(5)
  expect(five_factorial).to be 120
  end

  it "checks factorial of zero be 1" do
    solve = Solver.new
    zero_factorial = solve.factorial(0)
    expect(zero_factorial).to be 1
  end

  it "checks if number is negative give exception" do
    solve = Solver.new
    negative_num = solve.factorial(-5)
    expect(negative_num).to eql "Factorial of negative number can't be calculated"
  end

  it "checks if the reverse method exists" do
    solve = Solver.new
    expect(solve).to respond_to :reverse
  end

  it "checks if the reverse method exists" do
    solve = Solver.new
    expect(solve.reverse('hello')).to eql 'olleh'
  end
end
