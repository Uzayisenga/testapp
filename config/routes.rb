Rails.application.routes.draw do
 devise_for :users
  resources :videos
  get 'videos/show'
  get '/videos/:id', to: 'posts#show'
  get 'publisher/create'
  get 'publisher/store'
  resources :get_free_consultants
  resources :publishers do
    resources :comments
  end
  resources :questions
  resources :advices
  resources :docteurs
  get 'welcome/index'
  root 'welcome#index'
 
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
