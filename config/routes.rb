Rails.application.routes.draw do
  # get 'books/new'
  # get 'books/index'
  # get '/' => 'homes#top'
  root to: 'homes#top'
  # get '/books' => 'books#index'
  # # get 'books/show'
  # # get 'books/edit'
  # post 'books' => 'books#create'
  # get 'books/:id' => 'books#show'
  # get 'books/:id/edit' => 'books#edit'
  # patch 'books/:id' => 'books#update'
  # delete 'books/:id' => 'books#destroy' , as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
end
