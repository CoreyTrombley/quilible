Quilible::Application.routes.draw do
  root :to => 'home#index'
  resources :friendships
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => { :registrations => "registrations" }
  match '/profile', :to => 'home#show'
  match '/pictures', :to => 'pictures#index', :as => 'pictures'
  resources :achievements do
    resources :pictures do
      resources :comments
    end
  end
end
