Rails.application.routes.draw do
  root 'pages#home'

  get 'shop' => 'items#index'
  get 'technology' => 'pages#technology'
end
