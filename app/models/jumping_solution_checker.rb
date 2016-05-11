module JumpingSolutionChecker
  def self.solves?(input, solution)
    return false, 'No solution provided' unless solution.present?

    JumpingSolutionChecker::Jumper.new(input).can_reach_end?(solution)
  end

  class Jumper
    def initialize(input)
      @numbers = input.split("\n").map(&:to_i)
    end

    def can_reach_end?(solution)
      final_position = @numbers.length - 1
      position = 0

      solution.split('').map(&:to_i).each do |jump|
        jump = jump.to_i
        if position >= final_position
          break
        end

        if @numbers[position] < jump
          return false
        end

        position += jump
      end

      position >= final_position
    end
  end
end
