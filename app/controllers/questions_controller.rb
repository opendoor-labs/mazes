class QuestionsController < ActionController::Base
  def show
    redis_token = Redis.new.get('token')

    if cookies[:token] == redis_token
      render :file => File.join(Rails.root, 'public', params[:name]), :status => 200
    else
      render json: {
        input: :unauthorized,
        message: 'incorrect token'
      }, status: :unauthorized
    end
  end
end
