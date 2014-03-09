RailsDevisePundit::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  match '/download', :to => 'home#download', via: :get
end