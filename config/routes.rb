Rails.application.routes.draw do

  #get 'welcome/home'

  
  get '/santa/letter', to: 'home#get_letter', as: 'user'

	
  devise_for :users, :controllers => {:omniauth_callbacks => "callbacks" }
 
  resources :letters

  root "welcome#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
