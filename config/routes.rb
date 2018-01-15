Rails.application.routes.draw do
  get 'about/aboutus'

  root 'home#index'

  devise_for :users
  get '*path' => redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
