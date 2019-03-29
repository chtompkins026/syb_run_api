Rails.application.routes.draw do
  root to: "home#index"

  namespace :api do
    resources :clients
    resources :trainers
    resources :users
    resources :lessons

    devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  end #end of namespace for API 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
end
