Rails.application.routes.draw do
  root :to => 'dogs#index'
  get 'dogs', to: 'dogs#index'
end
