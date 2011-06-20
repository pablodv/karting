Karting::Application.routes.draw do
  devise_for :admins, :path => :admin

  namespace :admins, :path => :admin do
    root :to => "clients#index"
    resources :clients
  end

  root :to => "clients#index"
end
