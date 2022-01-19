Rails.application.routes.draw do
  resources :events
  get 'index/home'
  get 'contracts/index'
  get 'contracts/show'
  get 'contracts/update'
  get 'contracts/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
