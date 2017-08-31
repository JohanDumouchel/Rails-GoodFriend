Rails.application.routes.draw do
	get 'login' => 'users#login', as: :login
	post 'login' => 'users#check', as: :check
	get 'logout' => 'users#logout', as: :logout
	get 'friends' => 'friends#index', as: :friends
  	get 'friends/:id' => 'friends#show', as: :friends_show
	resources :expenses
	resources :users
	root 'home#index'
end
