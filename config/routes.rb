Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root of site routed with route
  root 'posts#index', as: 'home'

  # Example of regular route
  # format: get 'page' => 'controller#view'
  get 'about' => 'pages#about', as: 'about'


  # Example resource route 
  resources :posts do
  	resources :comments
  end
end
