require_relative '../solver'

describe Solver do
  it "checks if this is an instance of the Solver class" do
    solve = Solver.new
    expect(solve).to be_instance_of Solver
  end
end
