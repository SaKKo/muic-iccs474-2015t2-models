Rails.application.routes.draw do

  resources :comments
  resources :posts
  resources :users
  root to: 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

end
