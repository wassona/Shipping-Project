Rails.application.routes.draw do
  devise_for :users
	root 'home#index'

	patch 'user_path' => 'users#avatar', as: "user"

	patch 'jobs/:job_id/add_boat' => 'jobs#add_boat', as: "add_boat"



	resources :boats
	resources :locations
	resources :jobs

	patch 'boats/:boat/remove_job/:job_id' => 'boats#remove_job'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
