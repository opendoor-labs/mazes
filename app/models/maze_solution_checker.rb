module MazeSolutionChecker
  UP = 'U'
  DOWN = 'D'
  LEFT = 'L'
  RIGHT = 'R'

  def self.solves?(maze, solution)
    return false, 'No solution provided' unless solution.present?

    state = MazeSolutionChecker::MazeState.new(maze)

    solution.each_char.with_index do |move, index|
      dx, dy = case move
      when UP
        [-1, 0]
      when DOWN
        [1, 0]
      when LEFT
        [0, -1]
      when RIGHT
        [0, 1]
      else
        return false, "Invalid move character at index #{index}"
      end

      if state.can_move?(dx, dy)
        state.move(dx, dy)
      else
        return false, "Illegal move at index #{index}"
      end
    end

    if state.on_exit?
      return true, nil
    else
      return false, 'Did not finish at an exit'
    end
  end

  class MazeState
    EMPTY = ' '
    WALL = 'W'
    START = 'S'
    EXIT = 'E'

    def initialize(maze)
      @maze = []
      @exits = []

      rows = maze.split("\n")
      rows.each_with_index do |row, i|
        maze_row = []
        row.each_char.with_index do |space, j|
          case space
          when EMPTY, WALL
            maze_row << space
          when START
            @x = i
            @y = j
            maze_row << EMPTY
          when EXIT
            @exits << [i, j]
            maze_row << EMPTY
          else
            raise "Unknown space: #{space}"
          end
        end
        @maze << maze_row
      end
    end

    def can_move?(dx, dy)
      new_x = @x + dx
      new_y = @y + dy
      new_space = @maze.dig(new_x, new_y)

      case new_space
      when EMPTY
        true
      else
        false
      end
    end

    def move(dx, dy)
      @x += dx
      @y += dy
    end

    def on_exit?
      @exits.include?([@x, @y])
    end
  end
end
