Rails.application.routes.draw do
  resource :session
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
