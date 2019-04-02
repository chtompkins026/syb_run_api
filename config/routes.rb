Rails.application.routes.draw do
  root to: "home#index"

  scope module: :api, defaults: { format: :json }, path: 'api' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      devise_for :users, controllers: {
           registrations: 'api/v1/users/registrations',
       }, skip: [:sessions, :password]

       resources :clients
       resources :trainers
       resources :users
       resources :lessons
    end
  end
end


# devise_for :users,
#          path: '',
#          path_names: {
#            sign_in: 'login',
#            sign_out: 'logout',
#            registration: 'signup'
#          },
#          controllers: {
#            sessions: 'sessions',
#            registrations: 'registrations'
#          }
