Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated :user do
  	#my part
  	#get :confirm_email
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'

  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
