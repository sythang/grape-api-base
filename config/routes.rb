Rails.application.routes.draw do
  devise_for :administrators
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
