Rails.application.routes.draw do
  devise_for :users
  resources :thanks
  resources :comments
  get 'pages/info'

  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
root to: redirect('/ideas')
end
