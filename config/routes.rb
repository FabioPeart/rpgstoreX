# frozen_string_literal: true

Rails.application.routes.draw do
  get 'category/index'
  get 'category/show'
  get 'category/onSale'
  get 'category/newProducts'
  # get 'page/index'
  # get 'page/show'
  # get 'product/index'
  # get 'product/show'
  # get 'order/index'
  # get 'order/show'
  # get 'userorder/index'
  # get 'userorder/show'
  # get 'user/index'
  # get 'user/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product, only: %i[index show]
  resources :category, only: [:show]

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  # get 'search', to: 'search#index'
  # get 'search/results', to: 'search#results'

  root to: 'product#index'
end
