Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :customers, controllers: {
    sessions: 'sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'    
  }

  namespace :customers do
    root to: 'products#top'
    get '/about' => 'products#about'
    get '/products' => 'products#index'
    get 'products/:id' => 'products#show'
  end

  namespace :admins do
    resources :products, only: [:new, :create, :index, :edit, :update, :show]
    # get 'products/index'
    # get 'products/new'
    # get 'products/show'
    # get 'products/edit'
  end
  
end
