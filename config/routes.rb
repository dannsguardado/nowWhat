Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :eventos do
    get 'unsubscribe'
  	collection do 
  		post 'subscribe'
  	end
  end
  resources :perfils, except: ['index', 'destroy']
  get 'applications/apply'

  get 'about/aboutus'
  
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" } 
  get '*path' => redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
