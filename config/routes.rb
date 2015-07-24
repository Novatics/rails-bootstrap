RailsHerokuBootstrap::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/usuarios/minha-conta' => 'settings#edit', as: :edit_user
  put '/usuarios' => 'settings#update', as: :update_user
  
  root  to:                     'home#index'
  get 'contato'              => 'contacts#index', as: :contacts
  get 'contato/enviar'       => 'contacts#new',   as: :new_contact

  get 'frontend/:template'   => 'frontend#show'
  get 'frontend'             => 'frontend#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get ':slug'                => 'pages#show',     as: :page

end
