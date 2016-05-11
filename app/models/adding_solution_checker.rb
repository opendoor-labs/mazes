module AddingSolutionChecker
  def self.solves?(input, solution)
    return false, 'No solution provided' unless solution.present?

    AddingSolutionChecker::Adder.new(input).sum == solution.to_i
  end

  class Adder
    def initialize(input)
      @numbers = input.split("\n").map(&:to_i)
    end

    def sum
      @numbers.sum
    end
  end
end
