Rails.application.routes.draw do
  resources :downvotes
  resources :upvotes
  resources :philosophers
  resources :users
  resources :works
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
