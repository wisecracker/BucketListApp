Bucketlist::Application.routes.draw do
  resources :comments
  resources :todo_items
  
  # root :to => 'welcome#index'
end
