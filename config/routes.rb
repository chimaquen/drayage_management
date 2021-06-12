Rails.application.routes.draw do
  root to: 'schedules#index'
  get '/schedules/new', to: "schedules#new"
  post '/schedules', to: "schedules#create"
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
