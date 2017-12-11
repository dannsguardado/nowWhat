Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'eventos#index'
  get "/pages/:page" => "pages#show"
  resources :eventos
end
