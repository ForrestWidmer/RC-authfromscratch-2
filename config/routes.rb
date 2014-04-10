Blog::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout' #should probably use 'delete' but in the 
                                                     #instance of this small app 'get' should be fine.
  
  resources :users
  resources :sessions


  root to: 'articles#index'
  resources :articles
end
