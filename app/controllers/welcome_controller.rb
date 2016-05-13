class WelcomeController < ActionController::Base
  def index
    render :file => File.join(Rails.root, 'public', 'index.html'), :status => 200
  end

  def authenticate
    redis_token = Redis.new.get('token')

    if params[:token].present? && params[:token] == redis_token
      cookies[:token] = redis_token
      render :file => File.join(Rails.root, 'public', 'home.html'), :status => 200
    else
      render json: {
        input: :unauthorized,
        message: 'incorrect token'
      }, status: :unauthorized
    end
  end
end
