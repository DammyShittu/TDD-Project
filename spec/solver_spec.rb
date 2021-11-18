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
end
