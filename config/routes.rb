Rails.application.routes.draw do
  get 'main_menu/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'application/index'
    resources :characters
    root 'application#index'
end
