Karting::Application.routes.draw do
  devise_for :admins, :path => :admin, :controllers => { :sessions => "admins/users/sessions" }

  namespace :admins, :path => :admin do
    root :to => "clients#index"
    resources :clients
  end

  root :to => "admins/clients#index"
end
