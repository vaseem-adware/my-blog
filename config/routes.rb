Rails.application.routes.draw do

	root to: "posts#index"
  
  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  namespace :admin do
    resources :notifications
    resources :users, except: :destroy
    resources :posts
    resources :messages, only: [:index, :show]
    resources :tags
    resources :sessions, only: [:new, :create, :destroy]
    resources :comments do 
      member do 
        patch 'comment_status'
      end  
    end
  end

end
