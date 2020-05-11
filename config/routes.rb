Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "/" => "events#index"
 get "/new" => "events#new"
 post "/events" => "events#create"
 get "/:id/show" => "events#show"
 get "/:id/edit" => "events#edit"
 patch "events/:id" => "events#update"
 delete "events/:id" => "photos#destroy"
 
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "/" => "users#index"
 get "/users/new" => "users#new"
 post "/users" => "users#create"
 get "/:id/show" => "users#show"
 get "/:id/edit" => "users#edit"
 patch "users/:id" => "users#update"
 delete "users/:id" => "photos#destroy"
 
end
