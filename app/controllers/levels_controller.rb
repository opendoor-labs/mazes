class LevelsController < ActionController::Base
  def show
    if params[:index].present?
      index = params[:index]
    else
      index = 0
    end

    level = Level.find_by!(name: params[:name], index: index)

    render json: {
      input: level.input,
      solve_url: solve_level_url(name: level.name, index: index)
    }
  end

  def solve
    redis_token = Redis.new.get('token')

    unless params[:token].present? && params[:token] == redis_token
      render json: {
        input: :unauthorized,
        message: 'not authorized'
      }, status: :unauthorized
    end

    level = Level.find_by!(name: params[:name], index: params[:index])
    solved, error = SolutionChecker.solves?(level.name, level.input, params[:solution])

    if solved
      next_level = Level.find_by(name: params[:name], index: level.index + 1)
      if next_level.present?
        render json: {
          result: :completed,
          next_url: level_url(name: next_level.name, index: next_level.index)
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
