Bucketlist::Application.routes.draw do
  resources :comments
  resources :todo_items
  
  root :to => 'todo_items#index'
end
