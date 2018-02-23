Rails.application.routes.draw do
  resources :eventos
  resources :perfils
  get 'applications/apply'

  get 'about/aboutus'
  
  
  root 'home#index'
  post 'subscrive' => 'eventos#subscrive', as: :subscrive

  devise_for :users, controllers: { registrations: "registrations" } 
  get '*path' => redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
