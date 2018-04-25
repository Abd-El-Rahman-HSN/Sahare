Rails.application.routes.draw do

<<<<<<< HEAD
  resources :warehouse_trasactions do
    resources :tasks
  end
  resources :warehouse_locations
=======
  resources :warehouse_trasactions
  resources :warehouse_locations do
    resources :tasks
  end
>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :warehouses
  resources :locations
  resources :projects do
    resources :locations
  end
  devise_for :users
  root 'home#home'
  get 'home/home'
  resources :categories
  resources :item_dates
  resources :employee_data
  resources :client_data
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
