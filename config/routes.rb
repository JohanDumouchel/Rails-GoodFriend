Rails.application.routes.draw do
  # Clearance Routes
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/login" => "clearance/sessions#new", as: "sign_in"
  delete "/logout" => "clearance/sessions#destroy", as: "sign_out"
  get "/login" => "clearance/users#new", as: "sign_up"
  # End Clearance
  # 
	get 'friends' => 'friends#index', as: :friends
  get 'friends/:id' => 'friends#show', as: :friends_show
	resources :expenses
	resources :users
	root 'home#index'
end
