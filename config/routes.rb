Rails.application.routes.draw do

  get 'git/status'
  use_doorkeeper do
    # No need to register client application
    skip_controllers :applications, :authorized_applications
    # :authorized_applications
  end


  scope module: :api, defaults: { format: :json }, path: 'api' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

      resources :clients, :instructors, :workouts, :bookings, :schedules

      devise_for :users, controllers: {
           registrations: 'api/v1/registrations',
       }, skip: [:sessions, :password]
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
