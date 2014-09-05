Rails.application.routes.draw do

  root to: 'todo_items#index'

  resources :todo_items, only: [:index, :create, :update, :destroy]

end
