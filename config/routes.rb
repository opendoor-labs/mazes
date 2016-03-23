Rails.application.routes.draw do
  resources :levels, param: :name, only: :show do
    member do
      put :solve
    end
  end
end
