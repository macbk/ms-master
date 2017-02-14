Rails.application.routes.draw do
	root 'sessions#new'
	get '/select', to: 'sessions#new'
	post '/select', to: 'sessions#create'
	
	resources :statements
end