Training::Application.routes.draw do
 resources :users, except: :edit
 resources :public_groups
 resources :private_groups

 root to: "users#new"
end
