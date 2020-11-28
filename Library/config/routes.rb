Rails.application.routes.draw do
  get 'lookup/index'
  resources :books
  root 'lookup#index'
  get 'admin' => 'lookup#admin', as: 'admin'
  get 'patron' => 'lookup#patron', as: 'patron'
  get 'patron_index' => 'books#patron_index', as: 'books/patron_index'
  get 'new_review' => 'books#new_review', as: 'books/new_review'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
