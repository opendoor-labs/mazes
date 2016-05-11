module SolutionChecker
  SOLUTION_CHECKERS = {
    'maze': MazeSolutionChecker,
    'adding': AddingSolutionChecker,
    'jumping': JumpingSolutionChecker,
  }.with_indifferent_access.freeze

  def self.solves?(name, input, solution)
    SOLUTION_CHECKERS[name].solves?(input, solution)
  end
end
