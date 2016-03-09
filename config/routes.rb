Rails.application.routes.draw do
  
  devise_for :users
  
  resources :restaurants do 
  	resources :reviews, except: [:index, :show]
  	collection do
  		get 'search'
  	end		
  end	
  
  root 'restaurants#index'

  match '/about_us',   to: 'pages#about_us',   via: :get
  match '/contact_us', to: 'pages#contact_us', via: :get
  match '/chinese',    to: 'pages#chinese',    via: :get
  match '/greek',      to: 'pages#greek',      via: :get
  match '/italian',    to: 'pages#italian',    via: :get
end
