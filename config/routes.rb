Rails.application.routes.draw do
  resources :studnet_attendings
  resources :attendings
  resources :memorizations
  devise_for :teachers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :studentclasses
  resources :students

  root to: "students#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
