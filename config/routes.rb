Rails.application.routes.draw do
  resources :reviews
  resources :tutorials
  root to: 'welcome#index'
end
