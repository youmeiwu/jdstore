Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  namespace :admin do
    resources :products do
      member do
        post :publish
        post :hide
      end
    end
  end

  resources :products

end
