Rails.application.routes.draw do

	# post "/admin/posts/new/:id", to: "admin/posts#create"
	get "/admin/posts/new/:id", to: "admin/posts#new"

  namespace :admin do
    resources :users, except: :destroy
    resources :posts 
    resources :messages, only: [:index, :show]
    resources :tags
    resources :sessions, only: [:new, :create]
  end

end
