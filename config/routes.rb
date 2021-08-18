Rails.application.routes.draw do
  resources :studnet_memorizations
  get 'home/home'
  resources :studnet_attendings
  resources :attendings
  resources :memorizations
  devise_for :teachers, :skip => [:registrations] 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :studentclasses
  resources :students

  root to: "home#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
