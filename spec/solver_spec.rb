require_relative '../solver'

describe Solver do
  before(:each) do
    @solve = Solver.new
  end

  context '#factorial' do
    it 'checks if this is an instance of the Solver class' do
      expect(@solve).to be_instance_of Solver
    end

    it 'checks if the factorial method exists' do
      expect(@solve).to respond_to :factorial
    end

    it 'checks if factorial method behaves correctly' do
      five_factorial = @solve.factorial(5)
      expect(five_factorial).to be 120
    end

    it 'checks factorial of zero be 1' do
      zero_factorial = @solve.factorial(0)
      expect(zero_factorial).to be 1
    end

    it 'checks if number is negative give exception' do
      negative_num = @solve.factorial(-5)
      expect(negative_num).to eql "Factorial of negative number can't be calculated"
    end
  end

  context '#reverse' do
    it 'checks if the reverse method exists' do
      expect(@solve).to respond_to :reverse
    end

    it 'reverses Hello to olleh' do
      expect(@solve.reverse('Hello')).to eql 'olleh'
    end

    it 'reverses STABLE to elbats' do
      expect(@solve.reverse('STABLE')).to eql 'elbats'
    end
  end

  context '#fizzbuzz' do
    it 'returns fizz if number is divisible by 3' do
      mod_three = @solve.fizzbuzz(6)
      expect(mod_three).to eql 'fizz'
    end

    it 'returns buzz if number is divisible by 5' do
      mod_five = @solve.fizzbuzz(10)
      expect(mod_five).to eql 'buzz'
    end

    it 'returns fizzbuzz if number is divisible by 3 and also by 5' do
      mod_three_and_five = @solve.fizzbuzz(30)
      expect(mod_three_and_five).to eql 'fizzbuzz'
    end

    it 'returns number if number is not divisible by 3 or 5' do
      num = @solve.fizzbuzz(19)
      expect(num).to eql '19'
    end
  end
end
