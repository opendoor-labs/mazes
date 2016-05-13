Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  post '/authenticate', to: 'welcome#authenticate'
  get '/questions/:name', to: 'questions#show'

  resources :levels, param: :name, only: :show do
    member do
      put :solve
    end
  end
end
