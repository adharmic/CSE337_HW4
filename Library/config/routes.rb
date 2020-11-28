Rails.application.routes.draw do
  get 'lookup/index'
  resources :books
  root 'lookup#index'
  get 'admin' => 'lookup#admin', as: 'admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
