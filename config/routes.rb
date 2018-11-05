Rails.application.routes.draw do
  get 'page/index'
  get 'page/show'
  get 'product/index'
  get 'product/show'
  get 'order/index'
  get 'order/show'
  get 'userorder/index'
  get 'userorder/show'
  get 'user/index'
  get 'user/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
