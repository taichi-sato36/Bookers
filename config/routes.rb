Rails.application.routes.draw do
  root 'books#top'
  get 'books/index' => 'books#index', as:'book'
  post 'books/index' => 'books#create'
  get 'books/show/:id' => 'books#show', as: 'show_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
