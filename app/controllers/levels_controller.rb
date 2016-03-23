class LevelsController < ActionController::Base
  def show
    level = Level.find_by!(name: params[:name], password: params[:password])
    level.generate_new_password! if level.password.present?

    render json: {
      maze: level.maze,
      solve_url: solve_level_url(name: level.name, password: level.password)
    }
  end

  def solve
    level = Level.find_by!(name: params[:name], password: params[:password])
    level.generate_new_password! if level.password.present?

    solved, error = SolutionChecker.solves?(level.maze, params[:solution])

    if solved
      next_level = Level.find_by(index: level.index + 1)
      if next_level.present?
        render json: {
          result: :completed,
          next_url: level_url(name: next_level.name, password: next_level.password)
        }
      else
        render json: {
          result: :completed,
          message: level.message
        }
      end
    else
      render json: {
        result: :failed,
        message: error
      }
    end
  end
end
